(define z3-counter-check-sat 0)
(define z3-counter-get-model 0)

(define log-all-calls #f)
(define log-all-calls-with-file #t)

(define-values (z3-out z3-in z3-err z3-p)
  (open-process-ports "z3 -in" 'block (native-transcoder)))
(define (z3-reset!)
  (let-values (((out in err p)
                (open-process-ports "z3 -in" 'block (native-transcoder))))
    (set! z3-out out)
    (set! z3-in in)
    (set! z3-err err)
    (set! z3-p p)))
(define (z3-check-in!)
  (if (eof-object? z3-in)
      (error 'z3-check-in "z3 input port")
      ;; (if (= 0 (mod z3-counter-check-sat 300))
      ;;     (z3-reset!)
      ;;     #t)
      #t))

(define read-sat
  (lambda ()
    (z3-check-in!)
    (let ([r (read z3-in)])
      (when log-all-calls-with-file
        (let ((p^ (open-output-file "log.smt" 'append)))
          (fprintf p^ "~a\n" r)
          (flush-output-port p^)
          (close-output-port p^)))
      (when log-all-calls (printf "read-sat: ~a\n" r))
      (if (eq? r 'sat)
          #t
          (if (eq? r 'unsat)
              #f
              (if (eq? r 'unknown)
                  (begin
                    (printf "read-sat: unknown\n")
                    ;; work around a bug of z3-4.8.7
                    (z/gc!)
                    #f)
                  (error 'read-sat (format "~a" r))))))))

(define (init-log)
  (when log-all-calls-with-file
    (let ((p (open-output-file "log.smt" 'replace)))
      (close-output-port p))))

(define call-z3
  (lambda (xs)
    (when log-all-calls (printf "call-z3 enter\n"))
    (let ([p (open-output-file "call-z3.smt" 'replace)])
      (fprintf p "~a\n" xs)
      (close-output-port p)
      (system "perl -i -pe 's/#t/true/g; s/#f/false/g; s/bitvec-/#b/g' call-z3.smt")
      (let ([p (open-input-file "call-z3.smt")])
        (let ([xs^ (read p)])
          (close-input-port p)
          (when log-all-calls-with-file
            (let ((p^ (open-output-file "log.smt" 'append)))
              (for-each (lambda (x)
                          (fprintf p^ "~a\n" x)) xs^)
              (flush-output-port p^)
              (close-output-port p^)))
          (for-each (lambda (x)
                      (when log-all-calls (printf "~a\n" x))
                      (fprintf z3-out "~a\n" x)) xs^)
          (flush-output-port z3-out)
          ))
      )
    ))


(define read-model
  (lambda ()
    (let ([m (read z3-in)])
      (when log-all-calls-with-file
        (let ((p^ (open-output-file "log.smt" 'append)))
          (if (equal? (car m) 'model)
              (begin
                (fprintf p^ "(\n")
                (fprintf p^ "  model\n")
                (for-each (lambda (x)
                            (fprintf p^ "  ~a\n" x)) (cdr m))
                (fprintf p^ ")\n"))
              (fprintf p^ "~a\n" m))
          (flush-output-port p^)
          (close-output-port p^)))
      (when log-all-calls (printf "~a\n" m))
      (map (lambda (x)
             (let ((id (cadr x))
                   (params (caddr x))
                   (type (cadddr x))
                   (val (car (cddddr x)) ))
               (cond
                 ((null? params)
                  (let ((val (cond
                               ((eq? val 'false) #f)
                               ((eq? val 'true) #t)
                               (else (eval val)))))
                    (list id val type)))
                 (else (error 'read-model "doesn't support functions params" params)))
               ))
           (cdr m)))))

(define get-model-inc
  (lambda ()
    (call-z3 '((get-model)))
    (set! z3-counter-get-model (+ z3-counter-get-model 1))
    (read-model)))


(define neg-model
  (lambda (model)
    (cons
        'assert
      (list
       (cons
           'or
         (map
          (lambda (xv)
            (let ((id (car xv))
                  (val (cadr xv))
                  (type (caddr xv)))
              `(not (= (as ,id ,type) ,val))
              )) model))))
    ))


(run 1 (q)
     (fresh (a b)
            (== a b)
            (z/ `(declare-const ,a Int)) ;
            (z/assert `(= ,a 5))
            ))

(run 1 (q)
     (fresh (a b)
            (z/assert `(= ,a 5))
            ))

(run 1 (q)
     (fresh (a b)
            (== a b)
            (z/ `(declare-const ,a Int))
            (z/assert `(= ,a 5))
            (z/ `(declare-const ,b Int))
            ))

(run 3 (q)
     (conde
      ((z/ `(declare-const ,q Int))
       (z/assert `(= ,q 1)))
      ((z/ `(declare-const ,q Int))
       (z/assert `(= ,q 2)))
      ))
;; (1 2)

(run 1 (q)
     (fresh (a b)
            (== a b)
            (z/ `(declare-const ,a Bool))
            (z/assert `(= ,a #f))
            (== q `(,a ,b))))
;; ((#f #f))

;; https://github.com/namin/clpsmt-miniKanren/issues/10

;; Declare a fresh variable at the top
(define add1o
  (lambda (n out)
    (fresh ()
           (z/assert `(= ,out (+ ,n 1))))))

(run 5 (q)
     (fresh (n out)
            (z/ `(declare-const ,n Int))
            (z/ `(declare-const ,out Int))
            (add1o n out)
            (== q `(,n ,out))))
;; ((-1 0) (-2 -1) (-3 -2) (-4 -3) (-5 -4))

(run 5 (q)
     (fresh (n)
            (z/ `(declare-const ,n Int))
            (add1o n 1)
            (== q n)))
;; (1)

(run 5 (q)
     (fresh (out)
            (z/ `(declare-const ,out Int))
            (add1o 1 out)
            (== q out)))
;; (2)

;; Declare a variable, but that variable has already been unified with a constant.
(define add1o
  (lambda (n out)
    (fresh ()
           (z/ `(declare-const ,n Int))
           (z/ `(declare-const ,out Int))
           (z/assert `(= ,out (+ ,n 1))))))

(run 5 (q)
     (fresh (n out)
            (add1o n out)
            (== q `(,n ,out))))
;; ((-1 0) (-2 -1) (-3 -2) (-4 -3) (-5 -4))

(run 5 (q)
     (fresh (n)
            (add1o n 1)
            (== q n)))
;; (0)

(define (nevero)
  (conde
   [(== 1 2)]
   [(nevero)]))

(run 1 (q)
     (fresh (a b)

            (z/ `(declare-const ,a Int))
            (z/assert `(= ,a 5))

            (z/ `(declare-const ,b Int))
            (z/assert `(= ,b 6))

            (== a b) ; <-- promote the `==` to SMT assert 
            
            (nevero)))
;; ()

(define (nevero)
  (conde
   [(== 1 2)]
   [(nevero)]))

(run 1 (q)
     (fresh (a b)
            
            (=/= a b)
            
            (z/ `(declare-const ,a Int))
            (z/assert `(= ,a 5))

            (z/ `(declare-const ,b Int))
            (z/assert `(= ,b 5)) ; <-- promote the above `=/=` to SMT assert 

            (nevero)))
;; ()

(run 3 (q)
     (fresh (a b)
            (=/= a b)
            (z/ `(declare-const ,a Int))
            (z/assert `(= ,a 5)) ; <-- won't actually promote the above `=/=` to SMT assert, because b is not a SMT variable
            (== q `(,a ,b))))
;; (((5 _.0) (=/= ((_.0 5)))))

(define (nevero)
  (conde
   [(== 1 2)]
   [(nevero)]))

(run 1 (q)
     (fresh (a b)

            (z/ `(declare-const ,a Int))
            (z/assert `(= ,a 5))

            (z/ `(declare-const ,b Int))
            (z/assert `(= ,b 5))
            
            (=/= a b) ; <-- promote the `=/=` to SMT assert 
            
            (nevero)))
;; ()

(run 1 (q)
     (fresh (a b)
            (=/= a b)
            (z/ `(declare-const ,a Int))
            (z/ `(declare-const ,b Int))
            (z/assert `(= (- ,a ,b) 0))  ; <-- promote the above `=/=` to SMT assert 
            ))
;; ()

(define (nevero)
  (conde
   [(== 1 2)]
   [(nevero)]))

(run 1 (q)
     (fresh (a b c d)
            (=/= (list a b) (list c d))

            (z/ `(declare-const ,a Int))
            (z/ `(declare-const ,c Int))
            (z/assert `(< ,a 2))
            (z/assert `(> ,a 0))
            (z/assert `(= ,c 1))

            (== b d)
 
            (nevero)
            ))
;; ()

(run 3 (q)
     (fresh (a b c d e f)
            (=/= (list a b c) (list d e f))

            (z/ `(declare-const ,b Int))
            (z/ `(declare-const ,e Int))
            (z/assert `(< ,b 2))
            (z/assert `(> ,b 0))
            (z/assert `(= ,e 1))
 
            (== a d)
            (== c f)
            ))
;; ()

(run 3 (q)
     (fresh (a b c d e f)
            (=/= (list a b c) (list d e f))

            (z/ `(declare-const ,b Int))
            (z/ `(declare-const ,e Int))
            (z/assert `(< ,b 2))
            (z/assert `(> ,b 0))
            (z/assert `(= ,e 1))
 
            (== a d)
            
            (== q `((,a ,b ,c) (,d ,e ,f)))
            ))
;; ((((_.0 1 _.1) (_.0 1 _.2)) (=/= ((_.1 _.2)))))

;; Some normal tests for `=/=`
(run 1 (q)
     (fresh (x)
            (=/= x 0)
            (== q x)
            ))
;; ((_.0 (=/= ((_.0 0)))))

(run 1 (q)
     (fresh (x)
            (=/= x 0)
            (== x q)
            ))
;; ((_.0 (=/= ((_.0 0)))))

(run 1 (q)
     (fresh (x a b)
            (=/= a b)
            (== a `(,x 111 222))
            (== b `(0 111 222))
            (== q x)
            ))
;; ((_.0 (=/= ((_.0 0)))))

(run 1 (q)
     (fresh (x a b)
            (=/= a b)
            (== a `(,x 111 222))
            (== b `(0 111 222))
            (== x q)
            ))
;; ((_.0 (=/= ((_.0 0)))))

;; An example of SMT type propagation
(run 1 (q)
     (fresh (a b)

            (z/ `(declare-const ,a Int))
            (z/assert `(= ,a 5))

            (== a b)
            ; should be promote to SMT assert,
            ; because if `b` is fresh, the type of `b` must be equal to the type of `a`.
            ; so ideally miniKanren can automatically declare `b`.
            ))

; (Parameter (or 'naive
;                'reset-as-pop-push
;                'push-pop
;                '(assumptions <max-assumptions> <assert-neg-lits?>))
(define mode (make-parameter 'naive))

(define (displayln thing)
  (display thing)
  (newline))

; (((SExp) -> SExp) SExp) -> SExp
; Pure
(define (sexp-map f sexp)
  (cond
    ((pair? sexp)
     (f (cons (sexp-map f (car sexp)) (sexp-map f (cdr sexp)))))
    (else (f sexp))))

; Front-end
;
; Maintains the invariant that miniKanren constraints relevant to SMT variables
; are reflected as solver constraints. Owns c-M.
;
; All interaction with back-end happens via the back-end interface. Does not directly
; access solver or back-end state.
;
; interface: z/assert, z/, z/add-equality, z/add-disequality, z/purge

; (SMTExpr) -> Goal
(define (z/assert e)
  (z/ `(assert ,e)))

; (Stmt) -> Goal
(define (z/ stmt)
  (match stmt
    [(declare-const ,v ,t)
     (match t
       [Int #t] [Real #t]
       [,other (error 'z/ "Only Int and Real types are supported" t)])
     (when (not (var? v))
       (error 'z/ "Expected logic variable in declare-const"))
     (lambdag@ (st)
       (bind
         ((z/varo v) st)
         (z/internal stmt)))]
    [(assert ,e)
     (lambdag@ (st)
       (let ((e^ (walk* e (state-S st))))
         (bind
           (add-varos e^ st)
           (z/internal `(assert ,e^)))))]
    [,other (error 'z/ "Only declare-const and assert are supported")]))

; (SMTExpr State) -> (or #f State)
(define (add-varos e st)
  (foldl (lambda (v st)
           (bind
             st
             (z/varo v)))
          st
          (vars e '())))

; (MkVar) -> Goal
(define (z/varo u)
  (lambdag@ (st)
    (bind
      (let ((term (walk u (state-S st))))
        (if (var? term)
          (let* ((c (lookup-c term st))
                 (M (c-M c))
                 (D (c-D c)))
            (if M
              st
              (z/add-disequality
                (set-c term (c-with-M c #t) st)
                D)))
          st))
      (numbero u))))

; (MkVar Term) -> Goal
(define (z/add-equality v t)
  (lambdag@ (st)
    (bind
      ((z/internal `(assert (= ,v ,t))) st)
      (z/varo t))))

; (State (AList MkVar Term)) -> (or #f State)
(define (z/add-disequality st D)
  (let ((as (filter-smt-ok? st D)))
    (if (not (null? as))
        ((z/internal
         `(assert
            (and
              ,@(map
                  (lambda (cs)
                    `(or
                       ,@(map
                           (lambda (ds)
                             `(not (= ,(car ds) ,(cdr ds))))
                           cs)))
                  as))))
          st)
        st)))

; (State (AList MkVar Term)) -> (AList MkVar Term)
; Pure
(define (filter-smt-ok? st D)
  (filter
   (lambda (cs)
     (for-all (lambda (ds)
                (and (smt-ok? st (car ds)) (smt-ok? st (cdr ds))))
              cs))
   D))

; (State Term) -> Bool
; Pure
(define (smt-ok? st x)
  (let ((x (walk* x (state-S st))))
    (or (number? x)
        (and (var? x)
             (let ((c (lookup-c x st)))
               (c-M c))))))

; Goal
(define z/purge
  (lambdag@ (st)
    (if (null? (state-M st))
      st
      (let loop-g ([st^ st])
        (let ([m (z/check/relevant-model st^)])
          (if (not m)
            (mzero)
            ((conde
               [(add-model m)]
               [(assert-neg-model m)
                loop-g])
             st^)))))))

; (Model) -> Goal
; Pure
(define add-model
  (lambda (m)
    (lambdag@ (st)
      (foldl (lambda (p st)
               (let-values (((S _) (unify (lhs p) (rhs p) (state-S st))))
                 (when (not S)
                   (error 'add-model "model fails mK constraints; mk constraints not soundly reflected to SMT"))
                 (state-S-set st S)))
             st
             m))))

; (Model) -> Goal
; Pure
(define (assert-neg-model m)
  (if (null? m)
    fail
    (z/internal/no-check (neg-model m))))


; Back-end
;
; Owns state-M.
;
; interface: z/internal, z/internal/no-check, z/check, z/check/relevant-model, z/reset!

; ((ListOf Stmt)) -> Goal
(define (z/internal stmt)
  (lambda (st)
    (z/check
      (state-add-statement st stmt))))

; ((ListOf Stmt)) -> Goal
(define (z/internal/no-check stmt)
  (lambda (st)
    (state-add-statement st stmt)))

; (state-M st) : (ListOf Stmt)  in reverse order.

(define (state-add-statement st stmt)
  (state-M-set st (cons stmt (state-M st))))

; (State) -> (ListOf Stmt)
; Pure
(define (state-statements st)
  (reverse (state-M st)))

; (Var) -> Symbol
; Pure
(define (reify-v-name v)
  (string->symbol (string-append "_v" (number->string (var-idx v)))))

; (Term) -> SExpr
; Pure
; replaces all miniKanren variables in a term with symbols like _v0 for the solver.
(define (reify-to-smt-symbols e)
  (sexp-map
    (lambda (sexp)
      (if (var? sexp)
        (reify-v-name sexp)
        sexp))
    e))

; SMTExpr -> SMTExpr
; Pure
(define (wrap-neg e)
  (sexp-map
    (lambda (sexp)
      (if (and (number? sexp) (< sexp 0))
          `(- ,(- sexp))
          sexp))
    e))

; State; initialized in `z/reset!`

; Int for GC and assumption naming
(define assumption-count #f)

; Assm = Symbol
; (ListOf Assm)
(define all-assumptions #f)

; SMTType = (or 'Int 'Real)
; (SubstMap SMTType)
(define declared-types #f)

; (AList ReifiedAssertion Assm)
(define assertion-to-assumption #f)

(define (reset-state!)
  (set! declared-types empty-subst-map)
  (set! assertion-to-assumption '()))



; () -> Void
(define (z/reset!)
  (call-z3 '((reset) (push 1)))
  (set! assumption-count 0)
  (set! all-assumptions '())
  (set! declared-types empty-subst-map)
  (set! last-buffer '())
  (set! current-buffer '())
  (set! assertion-to-assumption '()))

(define (z/reset!^)
  ;; (call-z3 '((reset) (push 1)))
  (call-z3 '((pop 1) (push 1)))
  (set! assumption-count 0)
  (set! all-assumptions '())
  (set! declared-types empty-subst-map)
  (set! last-buffer '())
  (set! current-buffer '())
  (set! assertion-to-assumption '()))

; () -> Assm
(define (do-fresh-assumption!)
  (define assm
    (string->symbol
      (string-append "_a" (number->string assumption-count))))
  (set! assumption-count (+ assumption-count 1))
  (set! all-assumptions (cons assm all-assumptions))
  (match (mode)
    [(assumptions ,_1 ,_2)
     (prepare-statement! `(declare-const ,assm Bool))]
    [,_ (void)])
  assm)

; (MkVar SMTType) -> Void
(define (do-declare! v as-type)
  (set! declared-types (subst-map-add declared-types v as-type))
  (prepare-statement! `(declare-const ,(reify-to-smt-symbols v) ,as-type)))

; (Assm SMTExpr) -> Void
(define (do-assert! assm e)
  (set! assertion-to-assumption
    (cons (cons e assm) assertion-to-assumption))
  (let ([e^ (wrap-neg (reify-to-smt-symbols e))])
    (match (mode)
      [(assumptions ,_1 ,_2)
       (prepare-statement! `(assert (=> ,assm ,e^)))]
      [,_
        (prepare-statement! `(assert ,e^))]
      )))

; (State) -> (or #f State)
(define (z/check st . optional)
  (maybe-reset!)
  (let ((assms (replay! (state-statements st))))
    (do-check-sat assms)
    (match (read-sat)
      [sat st]
      [unsat #f]
      [unknown
       (match (mode)
         [(assumptions ,_1 ,_2) (guard (null? optional))
          (printf/warning "got unknown; retrying after reset")
          (if assumptions+reset-as-pop-push (z/reset!^) (z/reset!))
          (z/check st #t)]
         [,_
          (printf/warning "got unknown; unsoundly failing branch")
          #f])])))

; () -> Void
(define (maybe-reset!)
  (match (mode)
    [(assumptions ,max-assms ,_)
     (when (> assumption-count max-assms)
       (printf/debug "gc z3...\n")
       (if assumptions+reset-as-pop-push (z/reset!^) (z/reset!)))]
    [naive (z/reset!)]
    [reset-as-pop-push
      (reset-state!)
      (call-z3 '((pop 1) (push 1)))]
    [push-pop (reset-state!)]))

; ((ListOf Assms)) -> Bool
(define (do-check-sat assms)
  (match (mode)
    [naive
     (call-z3 (reverse current-buffer))
     (set! current-buffer '())
     (call-z3 '((check-sat)))]
    [reset-as-pop-push
     (call-z3 (reverse current-buffer))
     (set! current-buffer '())
     (call-z3 '((check-sat)))]
    [push-pop
      (let ([in-order (reverse current-buffer)])
        (reconcile-state! in-order last-buffer)
        (set! last-buffer in-order)
        (set! current-buffer '())
        (call-z3 '((check-sat))))]
    [(assumptions ,_1 ,_2)
     (call-z3 (reverse current-buffer))
     (set! current-buffer '())
     (call-z3 `((check-sat-assuming
               ,(pos-assms->all-literals assms))))]))

; ((ListOf Assm)) -> (ListOf SMTExpr)
(define (pos-assms->all-literals pos)
  (match (mode)
    [(assumptions ,_ ,assert-neg-lits?)
     (if assert-neg-lits?
       (map (lambda (b)
              (if (memq b pos)
                b
                `(not ,b)))
            all-assumptions)
       pos)]
    [,_ (error 'pos-assms->all-literals "should only be called for assumptions mode")]))


; ((ListOf Stmt)) -> (ListOf Assm)
(define (replay! all-statements)
  (define assms '())
  (define (add-assm! assm)
    (set! assms (cons assm assms)))
  
  ;(displayln (length all-statements))

  (for-each
    (lambda (stmt)
      (match stmt
        [(declare-const ,v ,t)
         (ensure-declared! v t)]
        [(assert ,e)
         (add-assm! (ensure-assert! e))]))
    all-statements)

  assms)

; (MkVar) -> (or #f SMTType)
(define (declared-type v)
  (let ([t (subst-map-lookup v declared-types)])
    (if (eq? t unbound)
      #f
      t)))

; (MkVar SMTType) -> Void
(define (ensure-declared! v as-type)
  (let ([existing-decl-type (declared-type v)])
    (cond
      [(not existing-decl-type)
       (do-declare! v as-type)]
      [(eq? as-type existing-decl-type)
       (void)]
      [else (error 'z/ "Inconsistent SMT types")])))

; (SMTExpr) -> Assm
; Returns the assumption variable corresponding to the
;  assertion.
(define (ensure-assert! e)
  (match (assoc e assertion-to-assumption)
    [(,_ . ,assm)
     assm]
    [#f
     (for-each
       (lambda (v)
         (when (not (declared-type v))
           (ensure-declared! v 'Int)))
       (vars e '()))
     (let ([assm (do-fresh-assumption!)])
       (do-assert! assm e)
       assm)]))


(define current-buffer '())

(define last-buffer '())

(define (prepare-statement! stmt)
  (set! current-buffer (cons stmt current-buffer)))

(define (find-common-prefix l1 l2 acc)
  (if (and (pair? l1) (pair? l2) (equal? (car l1) (car l2)))
    (find-common-prefix (cdr l1) (cdr l2) (cons (car l1) acc))
    (reverse acc)))

(define (rest-after-prefix l prefix)
  (if (null? prefix)
    l
    (rest-after-prefix (cdr l) (cdr prefix))))

(define (add-push-before-each l)
  (if (null? l)
    '()
    (cons '(push 1) (cons (car l) (add-push-before-each (cdr l))))))

(define (reconcile-state! new previous)
  (let* ([common (find-common-prefix new previous '())]
         ;[_ (begin
              ;(displayln new)
              ;(displayln previous)
              ;(displayln common))]
         [previous-suffix (rest-after-prefix previous common)]
         [new-suffix (rest-after-prefix new common)])
    (call-z3 `((pop ,(length previous-suffix))))
    (call-z3 (add-push-before-each new-suffix))))


; Model = (Alist Var Number)
; (State) -> (or #f Model)
(define (z/check/relevant-model st)
  (and (z/check st)
       (get-relevant-model st)))

; ((ListOf MkVar)) -> Model
(define (get-relevant-model st)
  (filter (lambda (p) (var? (car p)))
          (smt-symbols-to-vars (get-model-inc) (relevant-vars st))))

; (State) -> (ListOf MkVar)
; Pure
(define (relevant-vars st)
  (define res '())
  (define (add-res! v)
    (when (not (member v res))
      (set! res (cons v res))))

  (for-each
    (lambda (stmt)
      (match stmt
        [(assert ,e)
          (for-each add-res! (vars e '()))]
        [,_ (void)]))
    (state-M st))

  res)

; (SExp (ListOf MkVar)) -> SExp
; Pure
(define (smt-symbols-to-vars e vars)
  (define smtvar-to-mkvar
    (map (lambda (v) (cons (reify-v-name v) v))
         vars))

  (sexp-map
    (lambda (sexp)
      (cond
        [(and (symbol? sexp)
              (assoc sexp smtvar-to-mkvar))
         => (lambda (p) (cdr p))]
        [else sexp]))
    e))


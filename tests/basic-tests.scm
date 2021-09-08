(run 1 (q)
     (fresh (a b)
            (== a b)
            (z/ `(declare-const ,a Int)) ;
            (z/assert `(= ,a 5))
            ))
;; (reset)
;; (declare-const _v2 Int)
;; (declare-const _a1 Bool)
;; (assert (=> _a1 (= _v2 5)))
;; (check-sat-assuming (_a1))
;; sat
;; (check-sat-assuming (_a1))
;; sat
;; (get-model)
;; (
;;   model
;;   (define-fun _a1 () Bool true)
;;   (define-fun _v2 () Int 5)
;; )
;; (declare-const _a2 Bool)
;; (assert (=> _a2 (= _v2 5)))
;; (check-sat-assuming ((not _a1) _a2))
;; sat

(run 1 (q)
     (fresh (a b)
            (z/assert `(= ,a 5))
            ))
;; (reset)
;; (declare-const _a1 Bool)
;; (assert (=> _a1 (= _v1 5)))
;; (check-sat-assuming (_a1))
;; (error line 3 column 19: unknown constant _v1)
;;
;; Correct!

(run 1 (q)
     (fresh (a b)
            (== a b)
            (z/ `(declare-const ,a Int))
            (z/assert `(= ,a 5))
            (z/ `(declare-const ,b Int))
            ))
;; (reset)
;; (declare-const _v2 Int)
;; (declare-const _a1 Bool)
;; (assert (=> _a1 (= _v2 5)))
;; (check-sat-assuming (_a1))
;; sat
;; (check-sat-assuming (_a1))
;; sat
;; (get-model)
;; (
;;   model
;;   (define-fun _a1 () Bool true)
;;   (define-fun _v2 () Int 5)
;; )
;; (declare-const _a2 Bool)
;; (assert (=> _a2 (= _v2 5)))
;; (check-sat-assuming ((not _a1) _a2))
;; sat

(run 3 (q)
     (conde
      ((z/ `(declare-const ,q Int))
       (z/assert `(= ,q 1)))
      ((z/ `(declare-const ,q Int))
       (z/assert `(= ,q 2)))
      ))
;; (1 2)
;; (reset)
;; (declare-const _v0 Int)
;; (declare-const _a1 Bool)
;; (assert (=> _a1 (= _v0 1)))
;; (check-sat-assuming (_a1))
;; sat
;; (check-sat-assuming (_a1))
;; sat
;; (get-model)
;; (
;;   model
;;   (define-fun _v0 () Int 1)
;;   (define-fun _a1 () Bool true)
;; )
;; (declare-const _a2 Bool)
;; (assert (=> _a2 (= _v0 1)))
;; (check-sat-assuming ((not _a1) _a2))
;; sat
;; (declare-const _a3 Bool)
;; (assert (=> _a3 (= _v0 2)))
;; (check-sat-assuming ((not _a1) (not _a2) _a3))
;; sat
;; (check-sat-assuming ((not _a1) (not _a2) _a3))
;; sat
;; (get-model)
;; (
;;   model
;;   (define-fun _a3 () Bool true)
;;   (define-fun _v0 () Int 2)
;;   (define-fun _a1 () Bool false)
;;   (define-fun _a2 () Bool false)
;; )
;; (declare-const _a4 Bool)
;; (assert (=> _a4 (= _v0 2)))
;; (check-sat-assuming ((not _a1) (not _a2) (not _a3) _a4))
;; sat
;; (declare-const _a5 Bool)
;; (assert (=> _a5 (or (not (= _v0 1)))))
;; (check-sat-assuming (_a1 (not _a2) (not _a3) (not _a4) _a5))
;; unsat
;; (declare-const _a6 Bool)
;; (assert (=> _a6 (or (not (= _v0 2)))))
;; (check-sat-assuming ((not _a1) (not _a2) _a3 (not _a4) (not _a5) _a6))
;; unsat

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
;; (reset)
;; (declare-const _v1 Int)
;; (declare-const _a1 Bool)
;; (assert (=> _a1 (= 1 (+ _v1 1))))
;; (check-sat-assuming (_a1))
;; sat
;; (check-sat-assuming (_a1))
;; sat
;; (get-model)
;; (
;;   model
;;   (define-fun _v1 () Int 0)
;;   (define-fun _a1 () Bool true)
;; )
;; (declare-const _a2 Bool)
;; (assert (=> _a2 (= _v1 0)))
;; (check-sat-assuming ((not _a1) _a2))
;; sat
;; (declare-const _a3 Bool)
;; (assert (=> _a3 (or (not (= _v1 0)))))
;; (check-sat-assuming (_a1 (not _a2) _a3))
;; unsat

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

    (== a b)
   
    (nevero)))
;; (reset)
;; (declare-const _v1 Int)
;; (declare-const _a1 Bool)
;; (assert (=> _a1 (= _v1 5)))
;; (check-sat-assuming (_a1))
;; sat
;; (declare-const _v2 Int)
;; (declare-const _a2 Bool)
;; (assert (=> _a2 (= _v2 6)))
;; (check-sat-assuming (_a1 _a2))
;; sat
;; (declare-const _a3 Bool)
;; (assert (=> _a3 (= _v1 _v2)))
;; (check-sat-assuming (_a1 _a2 _a3))
;; unsat

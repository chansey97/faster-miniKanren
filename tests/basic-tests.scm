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

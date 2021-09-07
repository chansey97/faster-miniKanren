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

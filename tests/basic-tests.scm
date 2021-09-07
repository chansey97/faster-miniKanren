(run 1 (q)
     (fresh (a b)
            (== a b)
            (z/ `(declare-const ,a Int)) ;
            (z/assert `(= ,a 5))
            ))
;; (reset)
;; (declare-const _v1 Int) ; don't need it actually!
;; (declare-const _a1 Bool)
;; (declare-const _v2 Int)
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
;;   (define-fun _v1 () Int 0)
;; )
;; (declare-const _a2 Bool)
;; (assert (=> _a2 (= _v2 5)))
;; (check-sat-assuming ((not _a1) _a2))
;; sat

(load "mk-vicare.scm")
(load "mk.scm")
(load "mk-streaming-interface.scm")
(load "match.scm")
(load "smt.scm")
(load "z3-server.scm")
(load "test-check.scm")

;(mode 'naive)
;(mode `(assumptions 1000 #f))  ; don't assert negative assms. seems faster.
;(mode `(assumptions 1000 #t))  ; asssert negative assms
;(mode 'push-pop)
(mode 'reset-as-pop-push)

(displayln (mode))


;; (load "smt-extra-tests.scm")
;; (load "talk.scm")
;; (load "radi-tests.scm")
;; (load "radiw-concrete-tests.scm")
;; (load "full-abstract-interp-extended-tests.scm")
;; (load "rsa.scm")
;; (load "property-based-synthesis-tests.scm")

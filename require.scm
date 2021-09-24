(load "logging.scm")
(load "mk-vicare.scm")
(load "mk.scm")
(load "mk-streaming-interface.scm")
(load "match.scm")
(load "smt.scm")
(load "z3-server.scm")
(load "test-check.scm")

;; (mode 'naive)
;; (mode 'push-pop)

(mode 'reset-as-pop-push)

;; (define assumptions+reset-as-pop-push #t) ; using reset-as-pop-push in assumptions mode.
;; (define assumptions+reset-as-pop-push #f)

;; (mode `(assumptions 1000 #f))  ; don't assert negative assms. seems faster.
;; (mode `(assumptions 1000 #t))  ; asssert negative assms
;; (mode `(assumptions 25 #f))
;; (mode `(assumptions 25 #t))



(displayln (mode))


;; (load "smt-extra-tests.scm")
;; (load "talk.scm")
;; (load "radi-tests.scm")
;; (load "radiw-concrete-tests.scm")
;; (load "full-abstract-interp-extended-tests.scm")
;; (load "rsa.scm")
;; (load "property-based-synthesis-tests.scm")

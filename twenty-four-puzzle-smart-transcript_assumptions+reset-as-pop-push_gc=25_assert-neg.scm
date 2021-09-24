> (load "twenty-four-puzzle-smart.scm")
(assumptions 25 #t)
Testing "remove-one-elemento-a"
Testing "24-puzzle-refute-a"
Testing "24-puzzle-refute-b"
Testing "24-puzzle-refute-c"
Testing "24-puzzle-a-check-answer-a"
Testing "24-puzzle-a-check-answer-b"
Testing "24-puzzle-i"
(- 7 (- 7 (* 4 6))) [answer 1, 1 seconds total elapsed (wall time)]
(+ 4 (+ 6 (+ 7 7))) [answer 2, 2 seconds total elapsed (wall time)]
(* 4 (- 6 (- 7 7))) [answer 3, 2 seconds total elapsed (wall time)]
(+ 4 (+ 7 (+ 6 7))) [answer 4, 2 seconds total elapsed (wall time)]
(+ 6 (+ 4 (+ 7 7))) [answer 5, 3 seconds total elapsed (wall time)]
(* 4 (- 7 (- 7 6))) [answer 6, 3 seconds total elapsed (wall time)]
(+ 6 (+ 7 (+ 4 7))) [answer 7, 3 seconds total elapsed (wall time)]
(* 4 (+ 6 (- 7 7))) [answer 8, 3 seconds total elapsed (wall time)]
(* 4 (+ 7 (- 6 7))) [answer 9, 4 seconds total elapsed (wall time)]
(* 6 (- 4 (- 7 7))) [answer 10, 4 seconds total elapsed (wall time)]
(* 4 (- (+ 6 7) 7)) [answer 11, 4 seconds total elapsed (wall time)]
(+ 7 (+ 4 (+ 6 7))) [answer 12, 4 seconds total elapsed (wall time)]
(* 6 (- 7 (- 7 4))) [answer 13, 5 seconds total elapsed (wall time)]
(+ 7 (+ 6 (+ 4 7))) [answer 14, 5 seconds total elapsed (wall time)]
(* 6 (+ 4 (- 7 7))) [answer 15, 5 seconds total elapsed (wall time)]
(+ 7 (+ 7 (+ 4 6))) [answer 16, 5 seconds total elapsed (wall time)]
(+ 7 (- (* 4 6) 7)) [answer 17, 5 seconds total elapsed (wall time)]
(* 6 (+ 7 (- 4 7))) [answer 18, 5 seconds total elapsed (wall time)]
(* 6 (- (+ 4 7) 7)) [answer 19, 5 seconds total elapsed (wall time)]
(+ (+ 4 6) (+ 7 7)) [answer 20, 6 seconds total elapsed (wall time)]
(- (* 4 6) (- 7 7)) [answer 21, 6 seconds total elapsed (wall time)]
(+ (+ 4 7) (+ 6 7)) [answer 22, 6 seconds total elapsed (wall time)]
(+ (+ 6 7) (+ 4 7)) [answer 23, 7 seconds total elapsed (wall time)]
(+ (* 4 6) (- 7 7)) [answer 24, 7 seconds total elapsed (wall time)]
(+ (- 7 7) (* 4 6)) [answer 25, 8 seconds total elapsed (wall time)]
(+ (+ 7 7) (+ 4 6)) [answer 26, 8 seconds total elapsed (wall time)]
(- (+ 7 (* 4 6)) 7) [answer 27, 9 seconds total elapsed (wall time)]
*** z3-counter-check-sat count: 0
*** z3-counter-get-model count: 27
Failed: (let ((c1 z3-counter-check-sat) (c2 z3-counter-get-model)) (let ((ans (streaming-run* (e) (puzzle-drivero e '(4 6 7 7))))) (printf *** z3-counter-check-
sat count: ~s
 (- z3-counter-check-sat c1)) (printf *** z3-counter-get-model count: ~s
 (- z3-counter-get-model c2)) ans))
Expected: ((- 7 (- 7 (* 4 6))) (+ 4 (+ 6 (+ 7 7))) (* 4 (- 6 (- 7 7))) (+ 4 (+ 7 (+ 6 7))) (* 4 (/ 6 (/ 7 7))) (+ 6 (+ 4 (+ 7 7))) (* 4 (- 7 (- 7 6))) (+ 6 (+ 7
 (+ 4 7))) (* 4 (- 7 (/ 7 6))) (* 6 (- 4 (- 7 7))) (* 4 (+ 6 (- 7 7))) (* 4 (+ 7 (- 6 7))) (* 4 (- (+ 6 7) 7)) (* 4 (* 6 (/ 7 7))) (* 6 (/ 4 (/ 7 7))) (* 4 (/ (
* 6 7) 7)) (+ 7 (+ 4 (+ 6 7))) (* 6 (- 7 (- 7 4))) (+ 7 (+ 6 (+ 4 7))) (+ 7 (+ 7 (+ 4 6))) (* 6 (+ 4 (- 7 7))) (+ 7 (- (* 4 6) 7)) (* 6 (+ 7 (- 4 7))) (* 6 (- (
+ 4 7) 7)) (* 6 (* 4 (/ 7 7))) (* 6 (/ (* 4 7) 7)) (- (* 4 6) (- 7 7)) (/ (* 4 6) (/ 7 7)) (+ (+ 4 6) (+ 7 7)) (+ (+ 4 7) (+ 6 7)) (/ (* 7 7) (- 6 4)) (+ (- 7 7
) (* 4 6)) (- (+ 7 (* 4 6)) 7) (/ (* 4 (* 6 7)) 7) (* (* 4 6) (/ 7 7)) (+ (+ 6 7) (+ 4 7)) (+ (* 4 6) (- 7 7)) (/ (* 6 (* 4 7)) 7) (* (/ 7 7) (* 4 6)) (/ (* 7 (
* 4 6)) 7) (+ (+ 7 7) (+ 4 6)))
Computed: ((- 7 (- 7 (* 4 6))) (+ 4 (+ 6 (+ 7 7))) (* 4 (- 6 (- 7 7))) (+ 4 (+ 7 (+ 6 7))) (+ 6 (+ 4 (+ 7 7))) (* 4 (- 7 (- 7 6))) (+ 6 (+ 7 (+ 4 7))) (* 4 (+ 6
 (- 7 7))) (* 4 (+ 7 (- 6 7))) (* 6 (- 4 (- 7 7))) (* 4 (- (+ 6 7) 7)) (+ 7 (+ 4 (+ 6 7))) (* 6 (- 7 (- 7 4))) (+ 7 (+ 6 (+ 4 7))) (* 6 (+ 4 (- 7 7))) (+ 7 (+ 7
 (+ 4 6))) (+ 7 (- (* 4 6) 7)) (* 6 (+ 7 (- 4 7))) (* 6 (- (+ 4 7) 7)) (+ (+ 4 6) (+ 7 7)) (- (* 4 6) (- 7 7)) (+ (+ 4 7) (+ 6 7)) (+ (+ 6 7) (+ 4 7)) (+ (* 4 6
) (- 7 7)) (+ (- 7 7) (* 4 6)) (+ (+ 7 7) (+ 4 6)) (- (+ 7 (* 4 6)) 7))
(time (test "24-puzzle-i" ...))
    127 collections
    1.388408900s elapsed cpu time, including 0.000000000s collecting
    12.756853657s elapsed real time, including 0.015206700s collecting
    535679768 bytes allocated, including 535655128 bytes reclaimed
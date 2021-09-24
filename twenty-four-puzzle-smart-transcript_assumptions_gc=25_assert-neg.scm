> (load "twenty-four-puzzle-smart.scm")
(assumptions 25 #t)
Testing "remove-one-elemento-a"
Testing "24-puzzle-refute-a"
Testing "24-puzzle-refute-b"
Testing "24-puzzle-refute-c"
Testing "24-puzzle-a-check-answer-a"
Testing "24-puzzle-a-check-answer-b"
Testing "24-puzzle-i"
(- 7 (- 7 (* 4 6))) [answer 1, 4 seconds total elapsed (wall time)]
(+ 4 (+ 6 (+ 7 7))) [answer 2, 6 seconds total elapsed (wall time)]
(* 4 (- 6 (- 7 7))) [answer 3, 7 seconds total elapsed (wall time)]
(+ 4 (+ 7 (+ 6 7))) [answer 4, 7 seconds total elapsed (wall time)]
(+ 6 (+ 4 (+ 7 7))) [answer 5, 9 seconds total elapsed (wall time)]
(* 4 (- 7 (- 7 6))) [answer 6, 9 seconds total elapsed (wall time)]
(+ 6 (+ 7 (+ 4 7))) [answer 7, 10 seconds total elapsed (wall time)]
(* 4 (+ 6 (- 7 7))) [answer 8, 10 seconds total elapsed (wall time)]
(* 4 (+ 7 (- 6 7))) [answer 9, 11 seconds total elapsed (wall time)]
(* 6 (- 4 (- 7 7))) [answer 10, 11 seconds total elapsed (wall time)]
(* 4 (- (+ 6 7) 7)) [answer 11, 12 seconds total elapsed (wall time)]
(+ 7 (+ 4 (+ 6 7))) [answer 12, 13 seconds total elapsed (wall time)]
(* 6 (- 7 (- 7 4))) [answer 13, 13 seconds total elapsed (wall time)]
(+ 7 (+ 6 (+ 4 7))) [answer 14, 13 seconds total elapsed (wall time)]
(* 6 (+ 4 (- 7 7))) [answer 15, 14 seconds total elapsed (wall time)]
(+ 7 (+ 7 (+ 4 6))) [answer 16, 14 seconds total elapsed (wall time)]
(+ 7 (- (* 4 6) 7)) [answer 17, 14 seconds total elapsed (wall time)]
(* 6 (+ 7 (- 4 7))) [answer 18, 14 seconds total elapsed (wall time)]
(* 6 (- (+ 4 7) 7)) [answer 19, 16 seconds total elapsed (wall time)]
(+ (+ 4 6) (+ 7 7)) [answer 20, 17 seconds total elapsed (wall time)]
(- (* 4 6) (- 7 7)) [answer 21, 18 seconds total elapsed (wall time)]
(+ (+ 4 7) (+ 6 7)) [answer 22, 18 seconds total elapsed (wall time)]
(+ (+ 6 7) (+ 4 7)) [answer 23, 20 seconds total elapsed (wall time)]
(+ (* 4 6) (- 7 7)) [answer 24, 21 seconds total elapsed (wall time)]
(+ (- 7 7) (* 4 6)) [answer 25, 24 seconds total elapsed (wall time)]
(+ (+ 7 7) (+ 4 6)) [answer 26, 24 seconds total elapsed (wall time)]
(- (+ 7 (* 4 6)) 7) [answer 27, 27 seconds total elapsed (wall time)]
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
    1.482009500s elapsed cpu time, including 0.000000000s collecting
    36.152857221s elapsed real time, including 0.017784514s collecting
    535551880 bytes allocated, including 535760192 bytes reclaimed
$ scheme
Chez Scheme Version 9.5
Copyright 1984-2017 Cisco Systems, Inc.

> (load "twenty-four-puzzle-smart.scm")
Testing "remove-one-elemento-a"
Testing "24-puzzle-refute-a"
Testing "24-puzzle-refute-b"
Testing "24-puzzle-refute-c"
Testing "24-puzzle-a-check-answer-a"
Testing "24-puzzle-a-check-answer-b"
Testing "24-puzzle-i"
(- 7 (- 7 (* 4 6))) [answer 1, 9 seconds total elapsed (wall time)]
(+ 4 (+ 6 (+ 7 7))) [answer 2, 18 seconds total elapsed (wall time)]
(* 4 (- 6 (- 7 7))) [answer 3, 19 seconds total elapsed (wall time)]
(+ 4 (+ 7 (+ 6 7))) [answer 4, 20 seconds total elapsed (wall time)]
(* 4 (/ 6 (/ 7 7))) [answer 5, 24 seconds total elapsed (wall time)]
(+ 6 (+ 4 (+ 7 7))) [answer 6, 25 seconds total elapsed (wall time)]
(* 4 (- 7 (- 7 6))) [answer 7, 26 seconds total elapsed (wall time)]
(+ 6 (+ 7 (+ 4 7))) [answer 8, 27 seconds total elapsed (wall time)]
(* 4 (- 7 (/ 7 6))) [answer 9, 27 seconds total elapsed (wall time)]
(* 6 (- 4 (- 7 7))) [answer 10, 28 seconds total elapsed (wall time)]
(* 4 (+ 6 (- 7 7))) [answer 11, 30 seconds total elapsed (wall time)]
(* 4 (+ 7 (- 6 7))) [answer 12, 31 seconds total elapsed (wall time)]
(* 4 (* 6 (/ 7 7))) [answer 13, 33 seconds total elapsed (wall time)]
(* 4 (- (+ 6 7) 7)) [answer 14, 33 seconds total elapsed (wall time)]
(* 6 (/ 4 (/ 7 7))) [answer 15, 35 seconds total elapsed (wall time)]
(* 4 (/ (* 6 7) 7)) [answer 16, 36 seconds total elapsed (wall time)]
(+ 7 (+ 4 (+ 6 7))) [answer 17, 38 seconds total elapsed (wall time)]
(* 6 (- 7 (- 7 4))) [answer 18, 38 seconds total elapsed (wall time)]
(+ 7 (+ 6 (+ 4 7))) [answer 19, 40 seconds total elapsed (wall time)]
(+ 7 (+ 7 (+ 4 6))) [answer 20, 41 seconds total elapsed (wall time)]
(* 6 (+ 4 (- 7 7))) [answer 21, 42 seconds total elapsed (wall time)]
(+ 7 (- (* 4 6) 7)) [answer 22, 42 seconds total elapsed (wall time)]
(* 6 (+ 7 (- 4 7))) [answer 23, 44 seconds total elapsed (wall time)]
(* 6 (* 4 (/ 7 7))) [answer 24, 47 seconds total elapsed (wall time)]
(* 6 (- (+ 4 7) 7)) [answer 25, 48 seconds total elapsed (wall time)]
(* 6 (/ (* 4 7) 7)) [answer 26, 51 seconds total elapsed (wall time)]
(- (* 4 6) (- 7 7)) [answer 27, 64 seconds total elapsed (wall time)]
(/ (* 4 6) (/ 7 7)) [answer 28, 68 seconds total elapsed (wall time)]
(+ (+ 4 6) (+ 7 7)) [answer 29, 75 seconds total elapsed (wall time)]
(/ (* 7 7) (- 6 4)) [answer 30, 78 seconds total elapsed (wall time)]
(+ (- 7 7) (* 4 6)) [answer 31, 80 seconds total elapsed (wall time)]
(+ (+ 4 7) (+ 6 7)) [answer 32, 81 seconds total elapsed (wall time)]
(- (+ 7 (* 4 6)) 7) [answer 33, 91 seconds total elapsed (wall time)]
(/ (* 4 (* 6 7)) 7) [answer 34, 95 seconds total elapsed (wall time)]
(+ (+ 6 7) (+ 4 7)) [answer 35, 102 seconds total elapsed (wall time)]
(* (* 4 6) (/ 7 7)) [answer 36, 105 seconds total elapsed (wall time)]
(/ (* 6 (* 4 7)) 7) [answer 37, 109 seconds total elapsed (wall time)]
(* (/ 7 7) (* 4 6)) [answer 38, 111 seconds total elapsed (wall time)]
(+ (* 4 6) (- 7 7)) [answer 39, 113 seconds total elapsed (wall time)]
(/ (* 7 (* 4 6)) 7) [answer 40, 118 seconds total elapsed (wall time)]
(+ (+ 7 7) (+ 4 6)) [answer 41, 126 seconds total elapsed (wall time)]
*** z3-counter-check-sat count: 0
*** z3-counter-get-model count: 41
Failed: (let ((c1 z3-counter-check-sat) (c2 z3-counter-get-model)) (let ((ans (streaming-run* (e) (puzzle-drivero e '(4 6 7 7))))) (printf *** z3-coun
ter-check-sat count: ~s
 (- z3-counter-check-sat c1)) (printf *** z3-counter-get-model count: ~s
 (- z3-counter-get-model c2)) ans))
Expected: ((- 7 (- 7 (* 4 6))) (+ 4 (+ 6 (+ 7 7))) (* 4 (- 6 (- 7 7))) (+ 4 (+ 7 (+ 6 7))) (* 4 (/ 6 (/ 7 7))) (+ 6 (+ 4 (+ 7 7))) (* 4 (- 7 (- 7 6)))
 (+ 6 (+ 7 (+ 4 7))) (* 4 (- 7 (/ 7 6))) (* 6 (- 4 (- 7 7))) (* 4 (+ 6 (- 7 7))) (* 4 (+ 7 (- 6 7))) (* 4 (- (+ 6 7) 7)) (* 4 (* 6 (/ 7 7))) (* 6 (/ 4
 (/ 7 7))) (* 4 (/ (* 6 7) 7)) (+ 7 (+ 4 (+ 6 7))) (* 6 (- 7 (- 7 4))) (+ 7 (+ 6 (+ 4 7))) (+ 7 (+ 7 (+ 4 6))) (* 6 (+ 4 (- 7 7))) (+ 7 (- (* 4 6) 7))
 (* 6 (+ 7 (- 4 7))) (* 6 (- (+ 4 7) 7)) (* 6 (* 4 (/ 7 7))) (* 6 (/ (* 4 7) 7)) (- (* 4 6) (- 7 7)) (/ (* 4 6) (/ 7 7)) (+ (+ 4 6) (+ 7 7)) (+ (+ 4 7
) (+ 6 7)) (/ (* 7 7) (- 6 4)) (+ (- 7 7) (* 4 6)) (- (+ 7 (* 4 6)) 7) (/ (* 4 (* 6 7)) 7) (* (* 4 6) (/ 7 7)) (+ (+ 6 7) (+ 4 7)) (+ (* 4 6) (- 7 7))
 (/ (* 6 (* 4 7)) 7) (* (/ 7 7) (* 4 6)) (/ (* 7 (* 4 6)) 7) (+ (+ 7 7) (+ 4 6)))
Computed: ((- 7 (- 7 (* 4 6))) (+ 4 (+ 6 (+ 7 7))) (* 4 (- 6 (- 7 7))) (+ 4 (+ 7 (+ 6 7))) (* 4 (/ 6 (/ 7 7))) (+ 6 (+ 4 (+ 7 7))) (* 4 (- 7 (- 7 6)))
 (+ 6 (+ 7 (+ 4 7))) (* 4 (- 7 (/ 7 6))) (* 6 (- 4 (- 7 7))) (* 4 (+ 6 (- 7 7))) (* 4 (+ 7 (- 6 7))) (* 4 (* 6 (/ 7 7))) (* 4 (- (+ 6 7) 7)) (* 6 (/ 4
 (/ 7 7))) (* 4 (/ (* 6 7) 7)) (+ 7 (+ 4 (+ 6 7))) (* 6 (- 7 (- 7 4))) (+ 7 (+ 6 (+ 4 7))) (+ 7 (+ 7 (+ 4 6))) (* 6 (+ 4 (- 7 7))) (+ 7 (- (* 4 6) 7))
 (* 6 (+ 7 (- 4 7))) (* 6 (* 4 (/ 7 7))) (* 6 (- (+ 4 7) 7)) (* 6 (/ (* 4 7) 7)) (- (* 4 6) (- 7 7)) (/ (* 4 6) (/ 7 7)) (+ (+ 4 6) (+ 7 7)) (/ (* 7 7
) (- 6 4)) (+ (- 7 7) (* 4 6)) (+ (+ 4 7) (+ 6 7)) (- (+ 7 (* 4 6)) 7) (/ (* 4 (* 6 7)) 7) (+ (+ 6 7) (+ 4 7)) (* (* 4 6) (/ 7 7)) (/ (* 6 (* 4 7)) 7)
 (* (/ 7 7) (* 4 6)) (+ (* 4 6) (- 7 7)) (/ (* 7 (* 4 6)) 7) (+ (+ 7 7) (+ 4 6)))
(time (test "24-puzzle-i" ...))
    403 collections
    64.366012600s elapsed cpu time, including 0.078000500s collecting
    157.668437684s elapsed real time, including 0.097709933s collecting
    1700111112 bytes allocated, including 1692124024 bytes reclaimed
Testing "24-puzzle-j"
(- 5 (- 1 (* 2 10))) [answer 1, 4 seconds total elapsed (wall time)]
(+ 5 (- (* 2 10) 1)) [answer 2, 66 seconds total elapsed (wall time)]
(+ (- 5 1) (* 2 10)) [answer 3, 105 seconds total elapsed (wall time)]
(- (* 2 10) (- 1 5)) [answer 4, 128 seconds total elapsed (wall time)]
(- (+ 5 (* 2 10)) 1) [answer 5, 154 seconds total elapsed (wall time)]
(- (* 5 (/ 10 2)) 1) [answer 6, 168 seconds total elapsed (wall time)]
(- (/ (* 5 10) 2) 1) [answer 7, 197 seconds total elapsed (wall time)]
(/ (- (* 5 10) 1) 2) [answer 8, 210 seconds total elapsed (wall time)]
(+ (* 2 10) (- 5 1)) [answer 9, 225 seconds total elapsed (wall time)]
(time (test "24-puzzle-j" ...))
    681 collections
    128.669624800s elapsed cpu time, including 0.124800800s collecting
    274.501558572s elapsed real time, including 0.171349623s collecting
    2869255296 bytes allocated, including 2868180184 bytes reclaimed
Testing "24-puzzle-k"
(* 3 (- 7 (- 8 9))) [answer 1, 32 seconds total elapsed (wall time)]
(* 3 (- 8 (/ 7 9))) [answer 2, 39 seconds total elapsed (wall time)]
(* 3 (- 9 (- 8 7))) [answer 3, 42 seconds total elapsed (wall time)]
(* 3 (- 9 (/ 8 7))) [answer 4, 45 seconds total elapsed (wall time)]
(* 3 (/ 8 (/ 9 7))) [answer 5, 47 seconds total elapsed (wall time)]
(* 3 (+ 7 (- 9 8))) [answer 6, 50 seconds total elapsed (wall time)]
(* 3 (+ 7 (/ 9 8))) [answer 7, 52 seconds total elapsed (wall time)]
(* 3 (+ 8 (/ 7 9))) [answer 8, 54 seconds total elapsed (wall time)]
(* 3 (+ 9 (- 7 8))) [answer 9, 55 seconds total elapsed (wall time)]
(* 3 (- (+ 7 9) 8)) [answer 10, 57 seconds total elapsed (wall time)]
(* 3 (* 8 (/ 9 7))) [answer 11, 57 seconds total elapsed (wall time)]
(* 8 (- 3 (/ 7 9))) [answer 12, 59 seconds total elapsed (wall time)]
(* 8 (/ 3 (/ 9 7))) [answer 13, 69 seconds total elapsed (wall time)]
(* 8 (+ 3 (/ 7 9))) [answer 14, 84 seconds total elapsed (wall time)]
(* 8 (* 3 (/ 9 7))) [answer 15, 87 seconds total elapsed (wall time)]
(* 8 (/ (* 3 9) 7)) [answer 16, 93 seconds total elapsed (wall time)]
(- (* 3 8) (/ 7 9)) [answer 17, 119 seconds total elapsed (wall time)]
(/ (* 3 8) (/ 9 7)) [answer 18, 121 seconds total elapsed (wall time)]
(+ (/ 7 9) (* 3 8)) [answer 19, 158 seconds total elapsed (wall time)]
(* (* 3 8) (/ 9 7)) [answer 20, 192 seconds total elapsed (wall time)]
(+ (* 3 8) (/ 7 9)) [answer 21, 208 seconds total elapsed (wall time)]
(* (/ 9 7) (* 3 8)) [answer 22, 214 seconds total elapsed (wall time)]
(time (test "24-puzzle-k" ...))
    701 collections
    131.274841500s elapsed cpu time, including 0.093600600s collecting
    287.327183514s elapsed real time, including 0.178693961s collecting
    2957544736 bytes allocated, including 2955938704 bytes reclaimed
Testing "24-puzzle-a-all-streaming"
(* 8 (+ 1 (+ 1 1))) [answer 1, 26 seconds total elapsed (wall time)]
(time (test "24-puzzle-a-all-streaming" ...))
    220 collections
    29.218987300s elapsed cpu time, including 0.015600100s collecting
    78.893642465s elapsed real time, including 0.042666660s collecting
    928664272 bytes allocated, including 924377888 bytes reclaimed
Testing "24-puzzle-g-all-streaming"
(+ 2 (+ 2 (+ 10 10))) [answer 1, 14 seconds total elapsed (wall time)]
(+ 2 (+ 10 (+ 2 10))) [answer 2, 16 seconds total elapsed (wall time)]
(+ 10 (+ 2 (+ 2 10))) [answer 3, 24 seconds total elapsed (wall time)]
(+ 10 (+ 10 (+ 2 2))) [answer 4, 28 seconds total elapsed (wall time)]
(+ 10 (+ 10 (* 2 2))) [answer 5, 28 seconds total elapsed (wall time)]
(+ (+ 2 2) (+ 10 10)) [answer 6, 42 seconds total elapsed (wall time)]
(+ (+ 2 10) (+ 2 10)) [answer 7, 46 seconds total elapsed (wall time)]
(+ (* 2 2) (+ 10 10)) [answer 8, 65 seconds total elapsed (wall time)]
(+ (+ 10 10) (+ 2 2)) [answer 9, 71 seconds total elapsed (wall time)]
(+ (+ 10 10) (* 2 2)) [answer 10, 71 seconds total elapsed (wall time)]
(time (test "24-puzzle-g-all-streaming" ...))
    240 collections
    35.100225000s elapsed cpu time, including 0.093600600s collecting
    89.578543736s elapsed real time, including 0.058571579s collecting
    1012359344 bytes allocated, including 1020409688 bytes reclaimed
Testing "24-puzzle-h-all-streaming"
(- 2 (- 2 (* 2 12))) [answer 1, 1 seconds total elapsed (wall time)]
(* 2 (- 2 (- 2 12))) [answer 2, 10 seconds total elapsed (wall time)]
(* 2 (- 12 (- 2 2))) [answer 3, 12 seconds total elapsed (wall time)]
(* 2 (/ 12 (/ 2 2))) [answer 4, 15 seconds total elapsed (wall time)]
(+ 2 (- (* 2 12) 2)) [answer 5, 15 seconds total elapsed (wall time)]
(* 12 (- 2 (- 2 2))) [answer 6, 18 seconds total elapsed (wall time)]
(* 2 (+ 2 (- 12 2))) [answer 7, 18 seconds total elapsed (wall time)]
(* 2 (- (+ 2 12) 2)) [answer 8, 19 seconds total elapsed (wall time)]
(* 2 (* 2 (/ 12 2))) [answer 9, 20 seconds total elapsed (wall time)]
(* 2 (+ 12 (- 2 2))) [answer 10, 21 seconds total elapsed (wall time)]
(* 2 (* 12 (/ 2 2))) [answer 11, 23 seconds total elapsed (wall time)]
(* 12 (/ 2 (/ 2 2))) [answer 12, 23 seconds total elapsed (wall time)]
(* 2 (/ (* 2 12) 2)) [answer 13, 24 seconds total elapsed (wall time)]
(* 12 (+ 2 (- 2 2))) [answer 14, 28 seconds total elapsed (wall time)]
(* 12 (- (+ 2 2) 2)) [answer 15, 28 seconds total elapsed (wall time)]
(* 12 (* 2 (/ 2 2))) [answer 16, 30 seconds total elapsed (wall time)]
(* 12 (- (* 2 2) 2)) [answer 17, 30 seconds total elapsed (wall time)]
(+ (- 2 2) (* 2 12)) [answer 18, 30 seconds total elapsed (wall time)]
(* 12 (/ (+ 2 2) 2)) [answer 19, 31 seconds total elapsed (wall time)]
(* 12 (/ (* 2 2) 2)) [answer 20, 32 seconds total elapsed (wall time)]
(* (/ 2 2) (* 2 12)) [answer 21, 34 seconds total elapsed (wall time)]
(- (* 2 12) (- 2 2)) [answer 22, 37 seconds total elapsed (wall time)]
(* (+ 2 2) (/ 12 2)) [answer 23, 40 seconds total elapsed (wall time)]
(/ (* 2 12) (/ 2 2)) [answer 24, 40 seconds total elapsed (wall time)]
(- (+ 2 (* 2 12)) 2) [answer 25, 46 seconds total elapsed (wall time)]
(/ (* 2 (* 2 12)) 2) [answer 26, 54 seconds total elapsed (wall time)]
(* (* 2 2) (/ 12 2)) [answer 27, 56 seconds total elapsed (wall time)]
(* (* 2 12) (/ 2 2)) [answer 28, 58 seconds total elapsed (wall time)]
(* (/ 12 2) (+ 2 2)) [answer 29, 60 seconds total elapsed (wall time)]
(* (/ 12 2) (* 2 2)) [answer 30, 60 seconds total elapsed (wall time)]
(+ (* 2 12) (- 2 2)) [answer 31, 60 seconds total elapsed (wall time)]
(/ (* 12 (+ 2 2)) 2) [answer 32, 63 seconds total elapsed (wall time)]
(/ (* 12 (* 2 2)) 2) [answer 33, 64 seconds total elapsed (wall time)]
Failed: (streaming-run* (e) (puzzle-drivero e '(2 2 2 12)))
Expected: ((- 2 (- 2 (* 2 12))) (* 2 (- 2 (- 2 12))) (* 2 (- 12 (- 2 2))) (* 2 (/ 12 (/ 2 2))) (+ 2 (- (* 2 12) 2)) (* 2 (+ 2 (- 12 2))) (* 2 (- (+ 2
12) 2)) (* 2 (* 2 (/ 12 2))) (* 12 (- 2 (- 2 2))) (* 2 (+ 12 (- 2 2))) (* 2 (* 12 (/ 2 2))) (* 2 (/ (* 2 12) 2)) (* 12 (/ 2 (/ 2 2))) (* 12 (+ 2 (- 2
2))) (* 12 (- (+ 2 2) 2)) (+ (- 2 2) (* 2 12)) (* 12 (* 2 (/ 2 2))) (* 12 (- (* 2 2) 2)) (* 12 (/ (+ 2 2) 2)) (* 12 (/ (* 2 2) 2)) (* (/ 2 2) (* 2 12)
) (- (* 2 12) (- 2 2)) (/ (* 2 12) (/ 2 2)) (* (+ 2 2) (/ 12 2)) (- (+ 2 (* 2 12)) 2) (* (* 2 2) (/ 12 2)) (/ (* 2 (* 2 12)) 2) (* (* 2 12) (/ 2 2)) (
+ (* 2 12) (- 2 2)) (* (/ 12 2) (+ 2 2)) (* (/ 12 2) (* 2 2)) (/ (* 12 (+ 2 2)) 2) (/ (* 12 (* 2 2)) 2))
Computed: ((- 2 (- 2 (* 2 12))) (* 2 (- 2 (- 2 12))) (* 2 (- 12 (- 2 2))) (* 2 (/ 12 (/ 2 2))) (+ 2 (- (* 2 12) 2)) (* 12 (- 2 (- 2 2))) (* 2 (+ 2 (-
12 2))) (* 2 (- (+ 2 12) 2)) (* 2 (* 2 (/ 12 2))) (* 2 (+ 12 (- 2 2))) (* 2 (* 12 (/ 2 2))) (* 12 (/ 2 (/ 2 2))) (* 2 (/ (* 2 12) 2)) (* 12 (+ 2 (- 2
2))) (* 12 (- (+ 2 2) 2)) (* 12 (* 2 (/ 2 2))) (* 12 (- (* 2 2) 2)) (+ (- 2 2) (* 2 12)) (* 12 (/ (+ 2 2) 2)) (* 12 (/ (* 2 2) 2)) (* (/ 2 2) (* 2 12)
) (- (* 2 12) (- 2 2)) (* (+ 2 2) (/ 12 2)) (/ (* 2 12) (/ 2 2)) (- (+ 2 (* 2 12)) 2) (/ (* 2 (* 2 12)) 2) (* (* 2 2) (/ 12 2)) (* (* 2 12) (/ 2 2)) (
* (/ 12 2) (+ 2 2)) (* (/ 12 2) (* 2 2)) (+ (* 2 12) (- 2 2)) (/ (* 12 (+ 2 2)) 2) (/ (* 12 (* 2 2)) 2))
(time (test "24-puzzle-h-all-streaming" ...))
    228 collections
    31.574602400s elapsed cpu time, including 0.015600100s collecting
    82.184453462s elapsed real time, including 0.053509125s collecting
    959893800 bytes allocated, including 961699840 bytes reclaimed
>
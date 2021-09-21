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
(- 7 (- 7 (* 4 6))) [answer 1, 8 seconds total elapsed (wall time)]
(+ 4 (+ 6 (+ 7 7))) [answer 2, 16 seconds total elapsed (wall time)]
(* 4 (- 6 (- 7 7))) [answer 3, 17 seconds total elapsed (wall time)]
(+ 4 (+ 7 (+ 6 7))) [answer 4, 18 seconds total elapsed (wall time)]
(* 4 (/ 6 (/ 7 7))) [answer 5, 22 seconds total elapsed (wall time)]
(+ 6 (+ 4 (+ 7 7))) [answer 6, 23 seconds total elapsed (wall time)]
(* 4 (- 7 (- 7 6))) [answer 7, 24 seconds total elapsed (wall time)]
(+ 6 (+ 7 (+ 4 7))) [answer 8, 24 seconds total elapsed (wall time)]
(* 4 (- 7 (/ 7 6))) [answer 9, 24 seconds total elapsed (wall time)]
(* 6 (- 4 (- 7 7))) [answer 10, 25 seconds total elapsed (wall time)]
(* 4 (+ 6 (- 7 7))) [answer 11, 27 seconds total elapsed (wall time)]
(* 4 (+ 7 (- 6 7))) [answer 12, 28 seconds total elapsed (wall time)]
(* 4 (* 6 (/ 7 7))) [answer 13, 30 seconds total elapsed (wall time)]
(* 4 (- (+ 6 7) 7)) [answer 14, 30 seconds total elapsed (wall time)]
(* 6 (/ 4 (/ 7 7))) [answer 15, 31 seconds total elapsed (wall time)]
(* 4 (/ (* 6 7) 7)) [answer 16, 32 seconds total elapsed (wall time)]
(+ 7 (+ 4 (+ 6 7))) [answer 17, 33 seconds total elapsed (wall time)]
(* 6 (- 7 (- 7 4))) [answer 18, 33 seconds total elapsed (wall time)]
(+ 7 (+ 6 (+ 4 7))) [answer 19, 35 seconds total elapsed (wall time)]
(+ 7 (+ 7 (+ 4 6))) [answer 20, 36 seconds total elapsed (wall time)]
(* 6 (+ 4 (- 7 7))) [answer 21, 37 seconds total elapsed (wall time)]
(+ 7 (- (* 4 6) 7)) [answer 22, 37 seconds total elapsed (wall time)]
(* 6 (+ 7 (- 4 7))) [answer 23, 39 seconds total elapsed (wall time)]
(* 6 (* 4 (/ 7 7))) [answer 24, 42 seconds total elapsed (wall time)]
(* 6 (- (+ 4 7) 7)) [answer 25, 42 seconds total elapsed (wall time)]
(* 6 (/ (* 4 7) 7)) [answer 26, 45 seconds total elapsed (wall time)]
(- (* 4 6) (- 7 7)) [answer 27, 57 seconds total elapsed (wall time)]
(/ (* 4 6) (/ 7 7)) [answer 28, 61 seconds total elapsed (wall time)]
(+ (+ 4 6) (+ 7 7)) [answer 29, 67 seconds total elapsed (wall time)]
(/ (* 7 7) (- 6 4)) [answer 30, 69 seconds total elapsed (wall time)]
(+ (- 7 7) (* 4 6)) [answer 31, 72 seconds total elapsed (wall time)]
(+ (+ 4 7) (+ 6 7)) [answer 32, 72 seconds total elapsed (wall time)]
(- (+ 7 (* 4 6)) 7) [answer 33, 81 seconds total elapsed (wall time)]
(/ (* 4 (* 6 7)) 7) [answer 34, 85 seconds total elapsed (wall time)]
(+ (+ 6 7) (+ 4 7)) [answer 35, 91 seconds total elapsed (wall time)]
(* (* 4 6) (/ 7 7)) [answer 36, 94 seconds total elapsed (wall time)]
(/ (* 6 (* 4 7)) 7) [answer 37, 97 seconds total elapsed (wall time)]
(* (/ 7 7) (* 4 6)) [answer 38, 99 seconds total elapsed (wall time)]
(+ (* 4 6) (- 7 7)) [answer 39, 101 seconds total elapsed (wall time)]
(/ (* 7 (* 4 6)) 7) [answer 40, 105 seconds total elapsed (wall time)]
(+ (+ 7 7) (+ 4 6)) [answer 41, 112 seconds total elapsed (wall time)]
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
    401 collections
    57.002765400s elapsed cpu time, including 0.171601100s collecting
    141.918336212s elapsed real time, including 0.097414589s collecting
    1689635168 bytes allocated, including 1683492792 bytes reclaimed
Testing "24-puzzle-j"
(- 5 (- 1 (* 2 10))) [answer 1, 4 seconds total elapsed (wall time)]
(+ 5 (- (* 2 10) 1)) [answer 2, 58 seconds total elapsed (wall time)]
(+ (- 5 1) (* 2 10)) [answer 3, 95 seconds total elapsed (wall time)]
(- (* 2 10) (- 1 5)) [answer 4, 116 seconds total elapsed (wall time)]
(- (+ 5 (* 2 10)) 1) [answer 5, 139 seconds total elapsed (wall time)]
(- (* 5 (/ 10 2)) 1) [answer 6, 151 seconds total elapsed (wall time)]
(- (/ (* 5 10) 2) 1) [answer 7, 177 seconds total elapsed (wall time)]
(/ (- (* 5 10) 1) 2) [answer 8, 189 seconds total elapsed (wall time)]
(+ (* 2 10) (- 5 1)) [answer 9, 202 seconds total elapsed (wall time)]
(time (test "24-puzzle-j" ...))
    681 collections
    114.535934200s elapsed cpu time, including 0.187201200s collecting
    248.453946365s elapsed real time, including 0.170862657s collecting
    2872755400 bytes allocated, including 2867826672 bytes reclaimed
Testing "24-puzzle-k"
(* 3 (- 7 (- 8 9))) [answer 1, 29 seconds total elapsed (wall time)]
(* 3 (- 8 (/ 7 9))) [answer 2, 34 seconds total elapsed (wall time)]
(* 3 (- 9 (- 8 7))) [answer 3, 37 seconds total elapsed (wall time)]
(* 3 (- 9 (/ 8 7))) [answer 4, 40 seconds total elapsed (wall time)]
(* 3 (/ 8 (/ 9 7))) [answer 5, 42 seconds total elapsed (wall time)]
(* 3 (+ 7 (- 9 8))) [answer 6, 45 seconds total elapsed (wall time)]
(* 3 (+ 7 (/ 9 8))) [answer 7, 46 seconds total elapsed (wall time)]
(* 3 (+ 8 (/ 7 9))) [answer 8, 47 seconds total elapsed (wall time)]
(* 3 (+ 9 (- 7 8))) [answer 9, 48 seconds total elapsed (wall time)]
(* 3 (- (+ 7 9) 8)) [answer 10, 50 seconds total elapsed (wall time)]
(* 3 (* 8 (/ 9 7))) [answer 11, 50 seconds total elapsed (wall time)]
(* 8 (- 3 (/ 7 9))) [answer 12, 52 seconds total elapsed (wall time)]
(* 8 (/ 3 (/ 9 7))) [answer 13, 60 seconds total elapsed (wall time)]
(* 8 (+ 3 (/ 7 9))) [answer 14, 74 seconds total elapsed (wall time)]
(* 8 (* 3 (/ 9 7))) [answer 15, 76 seconds total elapsed (wall time)]
(* 8 (/ (* 3 9) 7)) [answer 16, 82 seconds total elapsed (wall time)]
(- (* 3 8) (/ 7 9)) [answer 17, 106 seconds total elapsed (wall time)]
(/ (* 3 8) (/ 9 7)) [answer 18, 108 seconds total elapsed (wall time)]
(+ (/ 7 9) (* 3 8)) [answer 19, 141 seconds total elapsed (wall time)]
(* (* 3 8) (/ 9 7)) [answer 20, 172 seconds total elapsed (wall time)]
(+ (* 3 8) (/ 7 9)) [answer 21, 185 seconds total elapsed (wall time)]
(* (/ 9 7) (* 3 8)) [answer 22, 190 seconds total elapsed (wall time)]
(time (test "24-puzzle-k" ...))
    701 collections
    118.997562800s elapsed cpu time, including 0.171601100s collecting
    258.484856190s elapsed real time, including 0.175010365s collecting
    2954722528 bytes allocated, including 2955339248 bytes reclaimed
Testing "24-puzzle-a-all-streaming"
(* 8 (+ 1 (+ 1 1))) [answer 1, 24 seconds total elapsed (wall time)]
(time (test "24-puzzle-a-all-streaming" ...))
    219 collections
    24.648158000s elapsed cpu time, including 0.046800300s collecting
    69.798008144s elapsed real time, including 0.041036994s collecting
    926371088 bytes allocated, including 920090304 bytes reclaimed
Testing "24-puzzle-g-all-streaming"
(+ 2 (+ 2 (+ 10 10))) [answer 1, 12 seconds total elapsed (wall time)]
(+ 2 (+ 10 (+ 2 10))) [answer 2, 13 seconds total elapsed (wall time)]
(+ 10 (+ 2 (+ 2 10))) [answer 3, 21 seconds total elapsed (wall time)]
(+ 10 (+ 10 (+ 2 2))) [answer 4, 24 seconds total elapsed (wall time)]
(+ 10 (+ 10 (* 2 2))) [answer 5, 24 seconds total elapsed (wall time)]
(+ (+ 2 2) (+ 10 10)) [answer 6, 37 seconds total elapsed (wall time)]
(+ (+ 2 10) (+ 2 10)) [answer 7, 40 seconds total elapsed (wall time)]
(+ (* 2 2) (+ 10 10)) [answer 8, 57 seconds total elapsed (wall time)]
(+ (+ 10 10) (+ 2 2)) [answer 9, 62 seconds total elapsed (wall time)]
(+ (+ 10 10) (* 2 2)) [answer 10, 62 seconds total elapsed (wall time)]
(time (test "24-puzzle-g-all-streaming" ...))
    242 collections
    29.000585900s elapsed cpu time, including 0.046800300s collecting
    80.796513258s elapsed real time, including 0.057701076s collecting
    1017726224 bytes allocated, including 1028649936 bytes reclaimed
Testing "24-puzzle-h-all-streaming"
(- 2 (- 2 (* 2 12))) [answer 1, 0 seconds total elapsed (wall time)]
(* 2 (- 2 (- 2 12))) [answer 2, 8 seconds total elapsed (wall time)]
(* 2 (- 12 (- 2 2))) [answer 3, 10 seconds total elapsed (wall time)]
(* 2 (/ 12 (/ 2 2))) [answer 4, 13 seconds total elapsed (wall time)]
(+ 2 (- (* 2 12) 2)) [answer 5, 13 seconds total elapsed (wall time)]
(* 12 (- 2 (- 2 2))) [answer 6, 15 seconds total elapsed (wall time)]
(* 2 (+ 2 (- 12 2))) [answer 7, 16 seconds total elapsed (wall time)]
(* 2 (- (+ 2 12) 2)) [answer 8, 17 seconds total elapsed (wall time)]
(* 2 (* 2 (/ 12 2))) [answer 9, 18 seconds total elapsed (wall time)]
(* 2 (+ 12 (- 2 2))) [answer 10, 18 seconds total elapsed (wall time)]
(* 2 (* 12 (/ 2 2))) [answer 11, 20 seconds total elapsed (wall time)]
(* 12 (/ 2 (/ 2 2))) [answer 12, 20 seconds total elapsed (wall time)]
(* 2 (/ (* 2 12) 2)) [answer 13, 21 seconds total elapsed (wall time)]
(* 12 (+ 2 (- 2 2))) [answer 14, 24 seconds total elapsed (wall time)]
(* 12 (- (+ 2 2) 2)) [answer 15, 25 seconds total elapsed (wall time)]
(* 12 (* 2 (/ 2 2))) [answer 16, 26 seconds total elapsed (wall time)]
(* 12 (- (* 2 2) 2)) [answer 17, 26 seconds total elapsed (wall time)]
(+ (- 2 2) (* 2 12)) [answer 18, 27 seconds total elapsed (wall time)]
(* 12 (/ (+ 2 2) 2)) [answer 19, 27 seconds total elapsed (wall time)]
(* 12 (/ (* 2 2) 2)) [answer 20, 28 seconds total elapsed (wall time)]
(* (/ 2 2) (* 2 12)) [answer 21, 30 seconds total elapsed (wall time)]
(- (* 2 12) (- 2 2)) [answer 22, 33 seconds total elapsed (wall time)]
(* (+ 2 2) (/ 12 2)) [answer 23, 35 seconds total elapsed (wall time)]
(/ (* 2 12) (/ 2 2)) [answer 24, 35 seconds total elapsed (wall time)]
(- (+ 2 (* 2 12)) 2) [answer 25, 41 seconds total elapsed (wall time)]
(/ (* 2 (* 2 12)) 2) [answer 26, 48 seconds total elapsed (wall time)]
(* (* 2 2) (/ 12 2)) [answer 27, 49 seconds total elapsed (wall time)]
(* (* 2 12) (/ 2 2)) [answer 28, 51 seconds total elapsed (wall time)]
(* (/ 12 2) (+ 2 2)) [answer 29, 52 seconds total elapsed (wall time)]
(* (/ 12 2) (* 2 2)) [answer 30, 52 seconds total elapsed (wall time)]
(+ (* 2 12) (- 2 2)) [answer 31, 53 seconds total elapsed (wall time)]
(/ (* 12 (+ 2 2)) 2) [answer 32, 56 seconds total elapsed (wall time)]
(/ (* 12 (* 2 2)) 2) [answer 33, 56 seconds total elapsed (wall time)]
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
    227 collections
    26.800971800s elapsed cpu time, including 0.062400400s collecting
    73.438471570s elapsed real time, including 0.052822333s collecting
    955570840 bytes allocated, including 957294264 bytes reclaimed
>
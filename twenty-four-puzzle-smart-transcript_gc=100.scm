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
(- 7 (- 7 (* 4 6))) [answer 1, 12 seconds total elapsed (wall time)]
(+ 4 (+ 6 (+ 7 7))) [answer 2, 23 seconds total elapsed (wall time)]
(* 4 (- 6 (- 7 7))) [answer 3, 24 seconds total elapsed (wall time)]
(+ 4 (+ 7 (+ 6 7))) [answer 4, 26 seconds total elapsed (wall time)]
(* 4 (/ 6 (/ 7 7))) [answer 5, 32 seconds total elapsed (wall time)]
(+ 6 (+ 4 (+ 7 7))) [answer 6, 33 seconds total elapsed (wall time)]
(* 4 (- 7 (- 7 6))) [answer 7, 35 seconds total elapsed (wall time)]
(+ 6 (+ 7 (+ 4 7))) [answer 8, 35 seconds total elapsed (wall time)]
(* 4 (- 7 (/ 7 6))) [answer 9, 36 seconds total elapsed (wall time)]
(* 6 (- 4 (- 7 7))) [answer 10, 36 seconds total elapsed (wall time)]
(* 4 (+ 6 (- 7 7))) [answer 11, 39 seconds total elapsed (wall time)]
(* 4 (+ 7 (- 6 7))) [answer 12, 42 seconds total elapsed (wall time)]
(* 4 (* 6 (/ 7 7))) [answer 13, 44 seconds total elapsed (wall time)]
(* 4 (- (+ 6 7) 7)) [answer 14, 44 seconds total elapsed (wall time)]
(* 6 (/ 4 (/ 7 7))) [answer 15, 46 seconds total elapsed (wall time)]
(* 4 (/ (* 6 7) 7)) [answer 16, 48 seconds total elapsed (wall time)]
(+ 7 (+ 4 (+ 6 7))) [answer 17, 50 seconds total elapsed (wall time)]
(* 6 (- 7 (- 7 4))) [answer 18, 50 seconds total elapsed (wall time)]
(+ 7 (+ 6 (+ 4 7))) [answer 19, 53 seconds total elapsed (wall time)]
(+ 7 (+ 7 (+ 4 6))) [answer 20, 54 seconds total elapsed (wall time)]
(* 6 (+ 4 (- 7 7))) [answer 21, 56 seconds total elapsed (wall time)]
(+ 7 (- (* 4 6) 7)) [answer 22, 56 seconds total elapsed (wall time)]
(* 6 (+ 7 (- 4 7))) [answer 23, 58 seconds total elapsed (wall time)]
(* 6 (* 4 (/ 7 7))) [answer 24, 62 seconds total elapsed (wall time)]
(* 6 (- (+ 4 7) 7)) [answer 25, 63 seconds total elapsed (wall time)]
(* 6 (/ (* 4 7) 7)) [answer 26, 67 seconds total elapsed (wall time)]
(- (* 4 6) (- 7 7)) [answer 27, 83 seconds total elapsed (wall time)]
(/ (* 4 6) (/ 7 7)) [answer 28, 89 seconds total elapsed (wall time)]
(+ (+ 4 6) (+ 7 7)) [answer 29, 97 seconds total elapsed (wall time)]
(/ (* 7 7) (- 6 4)) [answer 30, 101 seconds total elapsed (wall time)]
(+ (- 7 7) (* 4 6)) [answer 31, 105 seconds total elapsed (wall time)]
(+ (+ 4 7) (+ 6 7)) [answer 32, 105 seconds total elapsed (wall time)]
(- (+ 7 (* 4 6)) 7) [answer 33, 119 seconds total elapsed (wall time)]
(/ (* 4 (* 6 7)) 7) [answer 34, 124 seconds total elapsed (wall time)]
(+ (+ 6 7) (+ 4 7)) [answer 35, 133 seconds total elapsed (wall time)]
(* (* 4 6) (/ 7 7)) [answer 36, 137 seconds total elapsed (wall time)]
(/ (* 6 (* 4 7)) 7) [answer 37, 143 seconds total elapsed (wall time)]
(* (/ 7 7) (* 4 6)) [answer 38, 145 seconds total elapsed (wall time)]
(+ (* 4 6) (- 7 7)) [answer 39, 148 seconds total elapsed (wall time)]
(/ (* 7 (* 4 6)) 7) [answer 40, 155 seconds total elapsed (wall time)]
(+ (+ 7 7) (+ 4 6)) [answer 41, 165 seconds total elapsed (wall time)]
(time (test "24-puzzle-i" ...))
    425 collections
    73.367270300s elapsed cpu time, including 0.093600600s collecting
    204.571161977s elapsed real time, including 0.105458904s collecting
    1792691304 bytes allocated, including 1784723576 bytes reclaimed
Testing "24-puzzle-j"
(- 5 (- 1 (* 2 10))) [answer 1, 5 seconds total elapsed (wall time)]
(+ 5 (- (* 2 10) 1)) [answer 2, 88 seconds total elapsed (wall time)]
(+ (- 5 1) (* 2 10)) [answer 3, 139 seconds total elapsed (wall time)]
(- (* 2 10) (- 1 5)) [answer 4, 167 seconds total elapsed (wall time)]
(- (+ 5 (* 2 10)) 1) [answer 5, 201 seconds total elapsed (wall time)]
(- (* 5 (/ 10 2)) 1) [answer 6, 219 seconds total elapsed (wall time)]
(- (/ (* 5 10) 2) 1) [answer 7, 260 seconds total elapsed (wall time)]
(/ (- (* 5 10) 1) 2) [answer 8, 279 seconds total elapsed (wall time)]
(+ (* 2 10) (- 5 1)) [answer 9, 299 seconds total elapsed (wall time)]
(time (test "24-puzzle-j" ...))
    717 collections
    148.169749800s elapsed cpu time, including 0.202801300s collecting
    363.529413579s elapsed real time, including 0.184964537s collecting
    3024286336 bytes allocated, including 3020506120 bytes reclaimed
Testing "24-puzzle-k"
(* 3 (- 7 (- 8 9))) [answer 1, 45 seconds total elapsed (wall time)]
(* 3 (- 8 (/ 7 9))) [answer 2, 54 seconds total elapsed (wall time)]
(* 3 (- 9 (- 8 7))) [answer 3, 59 seconds total elapsed (wall time)]
(* 3 (- 9 (/ 8 7))) [answer 4, 62 seconds total elapsed (wall time)]
(* 3 (/ 8 (/ 9 7))) [answer 5, 65 seconds total elapsed (wall time)]
(* 3 (+ 7 (- 9 8))) [answer 6, 70 seconds total elapsed (wall time)]
(* 3 (+ 7 (/ 9 8))) [answer 7, 72 seconds total elapsed (wall time)]
(* 3 (+ 8 (/ 7 9))) [answer 8, 75 seconds total elapsed (wall time)]
(* 3 (+ 9 (- 7 8))) [answer 9, 76 seconds total elapsed (wall time)]
(* 3 (- (+ 7 9) 8)) [answer 10, 80 seconds total elapsed (wall time)]
(* 3 (* 8 (/ 9 7))) [answer 11, 80 seconds total elapsed (wall time)]
(* 8 (- 3 (/ 7 9))) [answer 12, 83 seconds total elapsed (wall time)]
(* 8 (/ 3 (/ 9 7))) [answer 13, 97 seconds total elapsed (wall time)]
(* 8 (+ 3 (/ 7 9))) [answer 14, 116 seconds total elapsed (wall time)]
(* 8 (* 3 (/ 9 7))) [answer 15, 121 seconds total elapsed (wall time)]
(* 8 (/ (* 3 9) 7)) [answer 16, 128 seconds total elapsed (wall time)]
(- (* 3 8) (/ 7 9)) [answer 17, 163 seconds total elapsed (wall time)]
(/ (* 3 8) (/ 9 7)) [answer 18, 165 seconds total elapsed (wall time)]
(+ (/ 7 9) (* 3 8)) [answer 19, 213 seconds total elapsed (wall time)]
(* (* 3 8) (/ 9 7)) [answer 20, 258 seconds total elapsed (wall time)]
(+ (* 3 8) (/ 7 9)) [answer 21, 279 seconds total elapsed (wall time)]
(* (/ 9 7) (* 3 8)) [answer 22, 291 seconds total elapsed (wall time)]
(time (test "24-puzzle-k" ...))
    738 collections
    149.230556600s elapsed cpu time, including 0.140400900s collecting
    380.870624302s elapsed real time, including 0.191434773s collecting
    3113606920 bytes allocated, including 3112012448 bytes reclaimed
Testing "24-puzzle-a-all-streaming"
(* 8 (+ 1 (+ 1 1))) [answer 1, 37 seconds total elapsed (wall time)]
(time (test "24-puzzle-a-all-streaming" ...))
    228 collections
    33.025411700s elapsed cpu time, including 0.046800300s collecting
    103.821960308s elapsed real time, including 0.054590002s collecting
    963307576 bytes allocated, including 968634664 bytes reclaimed
Testing "24-puzzle-g-all-streaming"
(+ 2 (+ 2 (+ 10 10))) [answer 1, 18 seconds total elapsed (wall time)]
(+ 2 (+ 10 (+ 2 10))) [answer 2, 19 seconds total elapsed (wall time)]
(+ 10 (+ 2 (+ 2 10))) [answer 3, 31 seconds total elapsed (wall time)]
(+ 10 (+ 10 (+ 2 2))) [answer 4, 35 seconds total elapsed (wall time)]
(+ 10 (+ 10 (* 2 2))) [answer 5, 36 seconds total elapsed (wall time)]
(+ (+ 2 2) (+ 10 10)) [answer 6, 54 seconds total elapsed (wall time)]
(+ (+ 2 10) (+ 2 10)) [answer 7, 59 seconds total elapsed (wall time)]
(+ (* 2 2) (+ 10 10)) [answer 8, 86 seconds total elapsed (wall time)]
(+ (+ 10 10) (+ 2 2)) [answer 9, 93 seconds total elapsed (wall time)]
(+ (+ 10 10) (* 2 2)) [answer 10, 93 seconds total elapsed (wall time)]
(time (test "24-puzzle-g-all-streaming" ...))
    251 collections
    38.719448200s elapsed cpu time, including 0.031200200s collecting
    120.842840367s elapsed real time, including 0.058390505s collecting
    1061284624 bytes allocated, including 1058075264 bytes reclaimed
Testing "24-puzzle-h-all-streaming"
(- 2 (- 2 (* 2 12))) [answer 1, 1 seconds total elapsed (wall time)]
(* 2 (- 2 (- 2 12))) [answer 2, 14 seconds total elapsed (wall time)]
(* 2 (- 12 (- 2 2))) [answer 3, 16 seconds total elapsed (wall time)]
(* 2 (/ 12 (/ 2 2))) [answer 4, 21 seconds total elapsed (wall time)]
(+ 2 (- (* 2 12) 2)) [answer 5, 21 seconds total elapsed (wall time)]
(* 12 (- 2 (- 2 2))) [answer 6, 25 seconds total elapsed (wall time)]
(* 2 (+ 2 (- 12 2))) [answer 7, 26 seconds total elapsed (wall time)]
(* 2 (- (+ 2 12) 2)) [answer 8, 27 seconds total elapsed (wall time)]
(* 2 (* 2 (/ 12 2))) [answer 9, 29 seconds total elapsed (wall time)]
(* 2 (+ 12 (- 2 2))) [answer 10, 30 seconds total elapsed (wall time)]
(* 2 (* 12 (/ 2 2))) [answer 11, 33 seconds total elapsed (wall time)]
(* 12 (/ 2 (/ 2 2))) [answer 12, 34 seconds total elapsed (wall time)]
(* 2 (/ (* 2 12) 2)) [answer 13, 35 seconds total elapsed (wall time)]
(* 12 (+ 2 (- 2 2))) [answer 14, 40 seconds total elapsed (wall time)]
(* 12 (- (+ 2 2) 2)) [answer 15, 41 seconds total elapsed (wall time)]
(* 12 (* 2 (/ 2 2))) [answer 16, 43 seconds total elapsed (wall time)]
(* 12 (- (* 2 2) 2)) [answer 17, 43 seconds total elapsed (wall time)]
(+ (- 2 2) (* 2 12)) [answer 18, 44 seconds total elapsed (wall time)]
(* 12 (/ (+ 2 2) 2)) [answer 19, 44 seconds total elapsed (wall time)]
(* 12 (/ (* 2 2) 2)) [answer 20, 45 seconds total elapsed (wall time)]
(* (/ 2 2) (* 2 12)) [answer 21, 49 seconds total elapsed (wall time)]
(- (* 2 12) (- 2 2)) [answer 22, 53 seconds total elapsed (wall time)]
(* (+ 2 2) (/ 12 2)) [answer 23, 57 seconds total elapsed (wall time)]
(/ (* 2 12) (/ 2 2)) [answer 24, 57 seconds total elapsed (wall time)]
(- (+ 2 (* 2 12)) 2) [answer 25, 65 seconds total elapsed (wall time)]
(/ (* 2 (* 2 12)) 2) [answer 26, 77 seconds total elapsed (wall time)]
(* (* 2 2) (/ 12 2)) [answer 27, 81 seconds total elapsed (wall time)]
(* (* 2 12) (/ 2 2)) [answer 28, 83 seconds total elapsed (wall time)]
(* (/ 12 2) (+ 2 2)) [answer 29, 85 seconds total elapsed (wall time)]
(* (/ 12 2) (* 2 2)) [answer 30, 85 seconds total elapsed (wall time)]
(+ (* 2 12) (- 2 2)) [answer 31, 86 seconds total elapsed (wall time)]
(/ (* 12 (+ 2 2)) 2) [answer 32, 90 seconds total elapsed (wall time)]
(/ (* 12 (* 2 2)) 2) [answer 33, 91 seconds total elapsed (wall time)]
(time (test "24-puzzle-h-all-streaming" ...))
    239 collections
    37.502640400s elapsed cpu time, including 0.046800300s collecting
    115.884635938s elapsed real time, including 0.056203260s collecting
    1006780888 bytes allocated, including 1008357912 bytes reclaimed
>
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
(- 7 (- 7 (* 4 6))) [answer 1, 50 seconds total elapsed (wall time)]
(+ 4 (+ 6 (+ 7 7))) [answer 2, 90 seconds total elapsed (wall time)]
(* 4 (- 6 (- 7 7))) [answer 3, 94 seconds total elapsed (wall time)]
(+ 4 (+ 7 (+ 6 7))) [answer 4, 101 seconds total elapsed (wall time)]
(* 4 (/ 6 (/ 7 7))) [answer 5, 120 seconds total elapsed (wall time)]
(+ 6 (+ 4 (+ 7 7))) [answer 6, 124 seconds total elapsed (wall time)]
(* 4 (- 7 (- 7 6))) [answer 7, 129 seconds total elapsed (wall time)]
(+ 6 (+ 7 (+ 4 7))) [answer 8, 131 seconds total elapsed (wall time)]
(* 4 (- 7 (/ 7 6))) [answer 9, 133 seconds total elapsed (wall time)]
(* 6 (- 4 (- 7 7))) [answer 10, 135 seconds total elapsed (wall time)]
(* 4 (+ 6 (- 7 7))) [answer 11, 145 seconds total elapsed (wall time)]
(* 4 (+ 7 (- 6 7))) [answer 12, 153 seconds total elapsed (wall time)]
(* 4 (* 6 (/ 7 7))) [answer 13, 160 seconds total elapsed (wall time)]
(* 4 (- (+ 6 7) 7)) [answer 14, 161 seconds total elapsed (wall time)]
(* 6 (/ 4 (/ 7 7))) [answer 15, 167 seconds total elapsed (wall time)]
(* 4 (/ (* 6 7) 7)) [answer 16, 173 seconds total elapsed (wall time)]
(+ 7 (+ 4 (+ 6 7))) [answer 17, 178 seconds total elapsed (wall time)]
(* 6 (- 7 (- 7 4))) [answer 18, 178 seconds total elapsed (wall time)]
(+ 7 (+ 6 (+ 4 7))) [answer 19, 188 seconds total elapsed (wall time)]
(+ 7 (+ 7 (+ 4 6))) [answer 20, 193 seconds total elapsed (wall time)]
(* 6 (+ 4 (- 7 7))) [answer 21, 198 seconds total elapsed (wall time)]
(+ 7 (- (* 4 6) 7)) [answer 22, 199 seconds total elapsed (wall time)]
(* 6 (+ 7 (- 4 7))) [answer 23, 206 seconds total elapsed (wall time)]
(* 6 (* 4 (/ 7 7))) [answer 24, 218 seconds total elapsed (wall time)]
(* 6 (- (+ 4 7) 7)) [answer 25, 220 seconds total elapsed (wall time)]
(* 6 (/ (* 4 7) 7)) [answer 26, 234 seconds total elapsed (wall time)]
(- (* 4 6) (- 7 7)) [answer 27, 293 seconds total elapsed (wall time)]
(/ (* 4 6) (/ 7 7)) [answer 28, 312 seconds total elapsed (wall time)]
(+ (+ 4 6) (+ 7 7)) [answer 29, 339 seconds total elapsed (wall time)]
(/ (* 7 7) (- 6 4)) [answer 30, 349 seconds total elapsed (wall time)]
(+ (- 7 7) (* 4 6)) [answer 31, 362 seconds total elapsed (wall time)]
(+ (+ 4 7) (+ 6 7)) [answer 32, 364 seconds total elapsed (wall time)]
(- (+ 7 (* 4 6)) 7) [answer 33, 399 seconds total elapsed (wall time)]
(/ (* 4 (* 6 7)) 7) [answer 34, 415 seconds total elapsed (wall time)]
(+ (+ 6 7) (+ 4 7)) [answer 35, 437 seconds total elapsed (wall time)]
(* (* 4 6) (/ 7 7)) [answer 36, 450 seconds total elapsed (wall time)]
(/ (* 6 (* 4 7)) 7) [answer 37, 465 seconds total elapsed (wall time)]
(* (/ 7 7) (* 4 6)) [answer 38, 471 seconds total elapsed (wall time)]
(+ (* 4 6) (- 7 7)) [answer 39, 477 seconds total elapsed (wall time)]
(/ (* 7 (* 4 6)) 7) [answer 40, 494 seconds total elapsed (wall time)]
(+ (+ 7 7) (+ 4 6)) [answer 41, 520 seconds total elapsed (wall time)]
(time (test "24-puzzle-i" ...))
    880 collections
    49.904719900s elapsed cpu time, including 0.140400900s collecting
    653.858807402s elapsed real time, including 0.151854868s collecting
    3709108144 bytes allocated, including 3702056744 bytes reclaimed
Testing "24-puzzle-j"
(- 5 (- 1 (* 2 10))) [answer 1, 25 seconds total elapsed (wall time)]
(+ 5 (- (* 2 10) 1)) [answer 2, 302 seconds total elapsed (wall time)]
(+ (- 5 1) (* 2 10)) [answer 3, 467 seconds total elapsed (wall time)]
(- (* 2 10) (- 1 5)) [answer 4, 560 seconds total elapsed (wall time)]
(- (+ 5 (* 2 10)) 1) [answer 5, 657 seconds total elapsed (wall time)]
(- (* 5 (/ 10 2)) 1) [answer 6, 700 seconds total elapsed (wall time)]
(- (/ (* 5 10) 2) 1) [answer 7, 793 seconds total elapsed (wall time)]
(/ (- (* 5 10) 1) 2) [answer 8, 834 seconds total elapsed (wall time)]
(+ (* 2 10) (- 5 1)) [answer 9, 880 seconds total elapsed (wall time)]
(time (test "24-puzzle-j" ...))
    1494 collections
    109.325500800s elapsed cpu time, including 0.202801300s collecting
    1062.244228392s elapsed real time, including 0.264625294s collecting
    6297070592 bytes allocated, including 6293665288 bytes reclaimed
Testing "24-puzzle-k"
(* 3 (- 7 (- 8 9))) [answer 1, 148 seconds total elapsed (wall time)]
(* 3 (- 8 (/ 7 9))) [answer 2, 178 seconds total elapsed (wall time)]
(* 3 (- 9 (- 8 7))) [answer 3, 190 seconds total elapsed (wall time)]
(* 3 (- 9 (/ 8 7))) [answer 4, 202 seconds total elapsed (wall time)]
(* 3 (/ 8 (/ 9 7))) [answer 5, 211 seconds total elapsed (wall time)]
(* 3 (+ 7 (- 9 8))) [answer 6, 224 seconds total elapsed (wall time)]
(* 3 (+ 7 (/ 9 8))) [answer 7, 228 seconds total elapsed (wall time)]
(* 3 (+ 8 (/ 7 9))) [answer 8, 237 seconds total elapsed (wall time)]
(* 3 (+ 9 (- 7 8))) [answer 9, 241 seconds total elapsed (wall time)]
(* 3 (- (+ 7 9) 8)) [answer 10, 250 seconds total elapsed (wall time)]
(* 3 (* 8 (/ 9 7))) [answer 11, 251 seconds total elapsed (wall time)]
(* 8 (- 3 (/ 7 9))) [answer 12, 257 seconds total elapsed (wall time)]
(* 8 (/ 3 (/ 9 7))) [answer 13, 295 seconds total elapsed (wall time)]
(* 8 (+ 3 (/ 7 9))) [answer 14, 352 seconds total elapsed (wall time)]
(* 8 (* 3 (/ 9 7))) [answer 15, 364 seconds total elapsed (wall time)]
(* 8 (/ (* 3 9) 7)) [answer 16, 387 seconds total elapsed (wall time)]
(- (* 3 8) (/ 7 9)) [answer 17, 496 seconds total elapsed (wall time)]
(/ (* 3 8) (/ 9 7)) [answer 18, 503 seconds total elapsed (wall time)]
(+ (/ 7 9) (* 3 8)) [answer 19, 638 seconds total elapsed (wall time)]
(* (* 3 8) (/ 9 7)) [answer 20, 748 seconds total elapsed (wall time)]
(+ (* 3 8) (/ 7 9)) [answer 21, 794 seconds total elapsed (wall time)]
(* (/ 9 7) (* 3 8)) [answer 22, 813 seconds total elapsed (wall time)]
(time (test "24-puzzle-k" ...))
    1544 collections
    112.227119400s elapsed cpu time, including 0.296401900s collecting
    1069.234782658s elapsed real time, including 0.277868601s collecting
    6509916928 bytes allocated, including 6507466488 bytes reclaimed
Testing "24-puzzle-a-all-streaming"
(* 8 (+ 1 (+ 1 1))) [answer 1, 127 seconds total elapsed (wall time)]
(time (test "24-puzzle-a-all-streaming" ...))
    464 collections
    20.607732100s elapsed cpu time, including 0.109200700s collecting
    344.922295228s elapsed real time, including 0.080040275s collecting
    1952217152 bytes allocated, including 1962794352 bytes reclaimed
Testing "24-puzzle-g-all-streaming"
(+ 2 (+ 2 (+ 10 10))) [answer 1, 70 seconds total elapsed (wall time)]
(+ 2 (+ 10 (+ 2 10))) [answer 2, 75 seconds total elapsed (wall time)]
(+ 10 (+ 2 (+ 2 10))) [answer 3, 115 seconds total elapsed (wall time)]
(+ 10 (+ 10 (+ 2 2))) [answer 4, 130 seconds total elapsed (wall time)]
(+ 10 (+ 10 (* 2 2))) [answer 5, 131 seconds total elapsed (wall time)]
(+ (+ 2 2) (+ 10 10)) [answer 6, 194 seconds total elapsed (wall time)]
(+ (+ 2 10) (+ 2 10)) [answer 7, 210 seconds total elapsed (wall time)]
(+ (* 2 2) (+ 10 10)) [answer 8, 280 seconds total elapsed (wall time)]
(+ (+ 10 10) (+ 2 2)) [answer 9, 298 seconds total elapsed (wall time)]
(+ (+ 10 10) (* 2 2)) [answer 10, 299 seconds total elapsed (wall time)]
(time (test "24-puzzle-g-all-streaming" ...))
    519 collections
    23.540550900s elapsed cpu time, including 0.078000500s collecting
    384.716739906s elapsed real time, including 0.088583862s collecting
    2190894336 bytes allocated, including 2187310192 bytes reclaimed
Testing "24-puzzle-h-all-streaming"
(- 2 (- 2 (* 2 12))) [answer 1, 5 seconds total elapsed (wall time)]
(* 2 (- 2 (- 2 12))) [answer 2, 50 seconds total elapsed (wall time)]
(* 2 (- 12 (- 2 2))) [answer 3, 60 seconds total elapsed (wall time)]
(* 2 (/ 12 (/ 2 2))) [answer 4, 74 seconds total elapsed (wall time)]
(+ 2 (- (* 2 12) 2)) [answer 5, 75 seconds total elapsed (wall time)]
(* 12 (- 2 (- 2 2))) [answer 6, 85 seconds total elapsed (wall time)]
(* 2 (+ 2 (- 12 2))) [answer 7, 88 seconds total elapsed (wall time)]
(* 2 (- (+ 2 12) 2)) [answer 8, 93 seconds total elapsed (wall time)]
(* 2 (* 2 (/ 12 2))) [answer 9, 99 seconds total elapsed (wall time)]
(* 2 (+ 12 (- 2 2))) [answer 10, 100 seconds total elapsed (wall time)]
(* 2 (* 12 (/ 2 2))) [answer 11, 108 seconds total elapsed (wall time)]
(* 12 (/ 2 (/ 2 2))) [answer 12, 111 seconds total elapsed (wall time)]
(* 2 (/ (* 2 12) 2)) [answer 13, 115 seconds total elapsed (wall time)]
(* 12 (+ 2 (- 2 2))) [answer 14, 133 seconds total elapsed (wall time)]
(* 12 (- (+ 2 2) 2)) [answer 15, 135 seconds total elapsed (wall time)]
(* 12 (* 2 (/ 2 2))) [answer 16, 141 seconds total elapsed (wall time)]
(* 12 (- (* 2 2) 2)) [answer 17, 142 seconds total elapsed (wall time)]
(+ (- 2 2) (* 2 12)) [answer 18, 144 seconds total elapsed (wall time)]
(* 12 (/ (+ 2 2) 2)) [answer 19, 147 seconds total elapsed (wall time)]
(* 12 (/ (* 2 2) 2)) [answer 20, 149 seconds total elapsed (wall time)]
(* (/ 2 2) (* 2 12)) [answer 21, 162 seconds total elapsed (wall time)]
(- (* 2 12) (- 2 2)) [answer 22, 174 seconds total elapsed (wall time)]
(* (+ 2 2) (/ 12 2)) [answer 23, 187 seconds total elapsed (wall time)]
(/ (* 2 12) (/ 2 2)) [answer 24, 189 seconds total elapsed (wall time)]
(- (+ 2 (* 2 12)) 2) [answer 25, 212 seconds total elapsed (wall time)]
(/ (* 2 (* 2 12)) 2) [answer 26, 241 seconds total elapsed (wall time)]
(* (* 2 2) (/ 12 2)) [answer 27, 249 seconds total elapsed (wall time)]
(* (* 2 12) (/ 2 2)) [answer 28, 256 seconds total elapsed (wall time)]
(* (/ 12 2) (+ 2 2)) [answer 29, 261 seconds total elapsed (wall time)]
(* (/ 12 2) (* 2 2)) [answer 30, 262 seconds total elapsed (wall time)]
(+ (* 2 12) (- 2 2)) [answer 31, 265 seconds total elapsed (wall time)]
(/ (* 12 (+ 2 2)) 2) [answer 32, 277 seconds total elapsed (wall time)]
(/ (* 12 (* 2 2)) 2) [answer 33, 280 seconds total elapsed (wall time)]
(time (test "24-puzzle-h-all-streaming" ...))
    485 collections
    22.058541400s elapsed cpu time, including 0.046800300s collecting
    359.810089120s elapsed real time, including 0.081133751s collecting
    2045577336 bytes allocated, including 2044772272 bytes reclaimed
>
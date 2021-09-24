> (load "twenty-four-puzzle-smart.scm")
reset-as-pop-push
Testing "remove-one-elemento-a"
Testing "24-puzzle-refute-a"
Testing "24-puzzle-refute-b"
Testing "24-puzzle-refute-c"
Testing "24-puzzle-a-check-answer-a"
Testing "24-puzzle-a-check-answer-b"
Testing "24-puzzle-i"
(- 7 (- 7 (* 4 6))) [answer 1, 4 seconds total elapsed (wall time)]
(+ 4 (+ 6 (+ 7 7))) [answer 2, 7 seconds total elapsed (wall time)]
(* 4 (- 6 (- 7 7))) [answer 3, 7 seconds total elapsed (wall time)]
(+ 4 (+ 7 (+ 6 7))) [answer 4, 8 seconds total elapsed (wall time)]
(* 4 (/ 6 (/ 7 7))) [answer 5, 9 seconds total elapsed (wall time)]
(+ 6 (+ 4 (+ 7 7))) [answer 6, 10 seconds total elapsed (wall time)]
(* 4 (- 7 (- 7 6))) [answer 7, 10 seconds total elapsed (wall time)]
(+ 6 (+ 7 (+ 4 7))) [answer 8, 10 seconds total elapsed (wall time)]
(* 4 (- 7 (/ 7 6))) [answer 9, 10 seconds total elapsed (wall time)]
(* 6 (- 4 (- 7 7))) [answer 10, 10 seconds total elapsed (wall time)]
(* 4 (+ 6 (- 7 7))) [answer 11, 11 seconds total elapsed (wall time)]
(* 4 (+ 7 (- 6 7))) [answer 12, 12 seconds total elapsed (wall time)]
(* 4 (- (+ 6 7) 7)) [answer 13, 12 seconds total elapsed (wall time)]
(* 4 (* 6 (/ 7 7))) [answer 14, 13 seconds total elapsed (wall time)]
(* 6 (/ 4 (/ 7 7))) [answer 15, 13 seconds total elapsed (wall time)]
(* 4 (/ (* 6 7) 7)) [answer 16, 14 seconds total elapsed (wall time)]
(+ 7 (+ 4 (+ 6 7))) [answer 17, 14 seconds total elapsed (wall time)]
(* 6 (- 7 (- 7 4))) [answer 18, 14 seconds total elapsed (wall time)]
(+ 7 (+ 6 (+ 4 7))) [answer 19, 15 seconds total elapsed (wall time)]
(+ 7 (+ 7 (+ 4 6))) [answer 20, 15 seconds total elapsed (wall time)]
(* 6 (+ 4 (- 7 7))) [answer 21, 15 seconds total elapsed (wall time)]
(+ 7 (- (* 4 6) 7)) [answer 22, 16 seconds total elapsed (wall time)]
(* 6 (+ 7 (- 4 7))) [answer 23, 16 seconds total elapsed (wall time)]
(* 6 (- (+ 4 7) 7)) [answer 24, 17 seconds total elapsed (wall time)]
(* 6 (* 4 (/ 7 7))) [answer 25, 17 seconds total elapsed (wall time)]
(* 6 (/ (* 4 7) 7)) [answer 26, 18 seconds total elapsed (wall time)]
(- (* 4 6) (- 7 7)) [answer 27, 23 seconds total elapsed (wall time)]
(/ (* 4 6) (/ 7 7)) [answer 28, 23 seconds total elapsed (wall time)]
(+ (+ 4 6) (+ 7 7)) [answer 29, 24 seconds total elapsed (wall time)]
(+ (+ 4 7) (+ 6 7)) [answer 30, 26 seconds total elapsed (wall time)]
(/ (* 7 7) (- 6 4)) [answer 31, 29 seconds total elapsed (wall time)]
(+ (- 7 7) (* 4 6)) [answer 32, 32 seconds total elapsed (wall time)]
(- (+ 7 (* 4 6)) 7) [answer 33, 34 seconds total elapsed (wall time)]
(/ (* 4 (* 6 7)) 7) [answer 34, 35 seconds total elapsed (wall time)]
(* (* 4 6) (/ 7 7)) [answer 35, 36 seconds total elapsed (wall time)]
(+ (+ 6 7) (+ 4 7)) [answer 36, 37 seconds total elapsed (wall time)]
(+ (* 4 6) (- 7 7)) [answer 37, 38 seconds total elapsed (wall time)]
got unknown; unsoundly failing branch
(/ (* 6 (* 4 7)) 7) [answer 38, 44 seconds total elapsed (wall time)]
(* (/ 7 7) (* 4 6)) [answer 39, 45 seconds total elapsed (wall time)]
(/ (* 7 (* 4 6)) 7) [answer 40, 46 seconds total elapsed (wall time)]
(+ (+ 7 7) (+ 4 6)) [answer 41, 50 seconds total elapsed (wall time)]
*** z3-counter-check-sat count: 0
*** z3-counter-get-model count: 41
(time (test "24-puzzle-i" ...))
    365 collections
    4.040425900s elapsed cpu time, including 0.202801300s collecting
    62.869259005s elapsed real time, including 0.152557482s collecting
    1536482120 bytes allocated, including 1517728464 bytes reclaimed
Testing "24-puzzle-j"
(- 5 (- 1 (* 2 10))) [answer 1, 1 seconds total elapsed (wall time)]
(+ 5 (- (* 2 10) 1)) [answer 2, 21 seconds total elapsed (wall time)]
(+ (- 5 1) (* 2 10)) [answer 3, 37 seconds total elapsed (wall time)]
(- (* 2 10) (- 1 5)) [answer 4, 41 seconds total elapsed (wall time)]
(- (+ 5 (* 2 10)) 1) [answer 5, 51 seconds total elapsed (wall time)]
(- (* 5 (/ 10 2)) 1) [answer 6, 55 seconds total elapsed (wall time)]
got unknown; unsoundly failing branch
got unknown; unsoundly failing branch
(- (/ (* 5 10) 2) 1) [answer 7, 70 seconds total elapsed (wall time)]
(/ (- (* 5 10) 1) 2) [answer 8, 74 seconds total elapsed (wall time)]
(+ (* 2 10) (- 5 1)) [answer 9, 80 seconds total elapsed (wall time)]
(time (test "24-puzzle-j" ...))
    604 collections
    6.926444400s elapsed cpu time, including 0.187201200s collecting
    95.401001851s elapsed real time, including 0.206664327s collecting
    2545158576 bytes allocated, including 2526720120 bytes reclaimed
Testing "24-puzzle-k"
(* 3 (- 7 (- 8 9))) [answer 1, 11 seconds total elapsed (wall time)]
(* 3 (- 8 (/ 7 9))) [answer 2, 14 seconds total elapsed (wall time)]
(* 3 (- 9 (- 8 7))) [answer 3, 15 seconds total elapsed (wall time)]
(* 3 (- 9 (/ 8 7))) [answer 4, 16 seconds total elapsed (wall time)]
(* 3 (/ 8 (/ 9 7))) [answer 5, 16 seconds total elapsed (wall time)]
(* 3 (+ 7 (- 9 8))) [answer 6, 18 seconds total elapsed (wall time)]
(* 3 (+ 7 (/ 9 8))) [answer 7, 18 seconds total elapsed (wall time)]
(* 3 (+ 8 (/ 7 9))) [answer 8, 19 seconds total elapsed (wall time)]
(* 3 (+ 9 (- 7 8))) [answer 9, 19 seconds total elapsed (wall time)]
(* 3 (- (+ 7 9) 8)) [answer 10, 19 seconds total elapsed (wall time)]
(* 3 (* 8 (/ 9 7))) [answer 11, 20 seconds total elapsed (wall time)]
(* 8 (- 3 (/ 7 9))) [answer 12, 20 seconds total elapsed (wall time)]
(* 8 (/ 3 (/ 9 7))) [answer 13, 23 seconds total elapsed (wall time)]
(* 8 (+ 3 (/ 7 9))) [answer 14, 28 seconds total elapsed (wall time)]
(* 8 (* 3 (/ 9 7))) [answer 15, 29 seconds total elapsed (wall time)]
(* 8 (/ (* 3 9) 7)) [answer 16, 31 seconds total elapsed (wall time)]
(- (* 3 8) (/ 7 9)) [answer 17, 38 seconds total elapsed (wall time)]
(/ (* 3 8) (/ 9 7)) [answer 18, 39 seconds total elapsed (wall time)]
(+ (/ 7 9) (* 3 8)) [answer 19, 53 seconds total elapsed (wall time)]
(* (* 3 8) (/ 9 7)) [answer 20, 58 seconds total elapsed (wall time)]
got unknown; unsoundly failing branch
(+ (* 3 8) (/ 7 9)) [answer 21, 65 seconds total elapsed (wall time)]
got unknown; unsoundly failing branch
(* (/ 9 7) (* 3 8)) [answer 22, 77 seconds total elapsed (wall time)]
(time (test "24-puzzle-k" ...))
    622 collections
    6.879644100s elapsed cpu time, including 0.280801800s collecting
    100.088513249s elapsed real time, including 0.218675569s collecting
    2617775160 bytes allocated, including 2619765024 bytes reclaimed
Testing "24-puzzle-a-all-streaming"
(* 8 (+ 1 (+ 1 1))) [answer 1, 10 seconds total elapsed (wall time)]
(time (test "24-puzzle-a-all-streaming" ...))
    191 collections
    2.106013500s elapsed cpu time, including 0.093600600s collecting
    33.083782847s elapsed real time, including 0.075693034s collecting
    805854840 bytes allocated, including 837294120 bytes reclaimed
Testing "24-puzzle-g-all-streaming"
(+ 2 (+ 2 (+ 10 10))) [answer 1, 6 seconds total elapsed (wall time)]
(+ 2 (+ 10 (+ 2 10))) [answer 2, 6 seconds total elapsed (wall time)]
(+ 10 (+ 2 (+ 2 10))) [answer 3, 10 seconds total elapsed (wall time)]
(+ 10 (+ 10 (+ 2 2))) [answer 4, 11 seconds total elapsed (wall time)]
(+ 10 (+ 10 (* 2 2))) [answer 5, 11 seconds total elapsed (wall time)]
(+ (+ 2 2) (+ 10 10)) [answer 6, 16 seconds total elapsed (wall time)]
(+ (+ 2 10) (+ 2 10)) [answer 7, 17 seconds total elapsed (wall time)]
(+ (* 2 2) (+ 10 10)) [answer 8, 22 seconds total elapsed (wall time)]
got unknown; unsoundly failing branch
(+ (+ 10 10) (+ 2 2)) [answer 9, 31 seconds total elapsed (wall time)]
(+ (+ 10 10) (* 2 2)) [answer 10, 31 seconds total elapsed (wall time)]
(time (test "24-puzzle-g-all-streaming" ...))
    215 collections
    3.010819300s elapsed cpu time, including 0.031200200s collecting
    40.251384331s elapsed real time, including 0.058016930s collecting
    907016248 bytes allocated, including 904571960 bytes reclaimed
Testing "24-puzzle-h-all-streaming"
(- 2 (- 2 (* 2 12))) [answer 1, 0 seconds total elapsed (wall time)]
(* 2 (- 2 (- 2 12))) [answer 2, 4 seconds total elapsed (wall time)]
(* 2 (- 12 (- 2 2))) [answer 3, 4 seconds total elapsed (wall time)]
(* 2 (/ 12 (/ 2 2))) [answer 4, 5 seconds total elapsed (wall time)]
(+ 2 (- (* 2 12) 2)) [answer 5, 5 seconds total elapsed (wall time)]
(* 2 (+ 2 (- 12 2))) [answer 6, 7 seconds total elapsed (wall time)]
(* 2 (- (+ 2 12) 2)) [answer 7, 7 seconds total elapsed (wall time)]
(* 2 (* 2 (/ 12 2))) [answer 8, 7 seconds total elapsed (wall time)]
(* 12 (- 2 (- 2 2))) [answer 9, 7 seconds total elapsed (wall time)]
(* 2 (+ 12 (- 2 2))) [answer 10, 7 seconds total elapsed (wall time)]
(* 2 (* 12 (/ 2 2))) [answer 11, 8 seconds total elapsed (wall time)]
(* 2 (/ (* 2 12) 2)) [answer 12, 9 seconds total elapsed (wall time)]
(* 12 (/ 2 (/ 2 2))) [answer 13, 9 seconds total elapsed (wall time)]
(* 12 (+ 2 (- 2 2))) [answer 14, 10 seconds total elapsed (wall time)]
(* 12 (- (+ 2 2) 2)) [answer 15, 11 seconds total elapsed (wall time)]
(+ (- 2 2) (* 2 12)) [answer 16, 11 seconds total elapsed (wall time)]
(* 12 (* 2 (/ 2 2))) [answer 17, 11 seconds total elapsed (wall time)]
(* 12 (- (* 2 2) 2)) [answer 18, 11 seconds total elapsed (wall time)]
(* 12 (/ (+ 2 2) 2)) [answer 19, 11 seconds total elapsed (wall time)]
(* 12 (/ (* 2 2) 2)) [answer 20, 12 seconds total elapsed (wall time)]
(* (/ 2 2) (* 2 12)) [answer 21, 12 seconds total elapsed (wall time)]
(- (* 2 12) (- 2 2)) [answer 22, 13 seconds total elapsed (wall time)]
(/ (* 2 12) (/ 2 2)) [answer 23, 14 seconds total elapsed (wall time)]
(* (+ 2 2) (/ 12 2)) [answer 24, 15 seconds total elapsed (wall time)]
(- (+ 2 (* 2 12)) 2) [answer 25, 18 seconds total elapsed (wall time)]
(* (* 2 2) (/ 12 2)) [answer 26, 21 seconds total elapsed (wall time)]
(/ (* 2 (* 2 12)) 2) [answer 27, 21 seconds total elapsed (wall time)]
(* (* 2 12) (/ 2 2)) [answer 28, 22 seconds total elapsed (wall time)]
(+ (* 2 12) (- 2 2)) [answer 29, 22 seconds total elapsed (wall time)]
(* (/ 12 2) (+ 2 2)) [answer 30, 23 seconds total elapsed (wall time)]
(* (/ 12 2) (* 2 2)) [answer 31, 23 seconds total elapsed (wall time)]
(/ (* 12 (+ 2 2)) 2) [answer 32, 25 seconds total elapsed (wall time)]
(/ (* 12 (* 2 2)) 2) [answer 33, 25 seconds total elapsed (wall time)]
(time (test "24-puzzle-h-all-streaming" ...))
    195 collections
    1.918812300s elapsed cpu time, including 0.031200200s collecting
    34.606589696s elapsed real time, including 0.048102982s collecting
    819095000 bytes allocated, including 823940024 bytes reclaimed
>
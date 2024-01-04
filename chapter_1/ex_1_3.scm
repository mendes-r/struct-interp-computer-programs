;; print
(define (printx expected result)
  (format
    #t
    "~%Expected: %S | Result: %S~%" expected result))

;; exercise 1.3
(define (solution-1 a b c) 
  (cond 
    ((and (< a b) (< a c)) (+ a (* b b) (* c c)))
    ((and (< b a) (< b c)) (+ b (* a a) (* c c)))
    ((= 1 1) (+ c (* a a) (* b b)))))

;; tests
(printx "14" (solution-1 1 2 3))
(solution-1 1 2 3) ;; shall return 14
(solution-1 2 1 3) ;; shall return 14
(solution-1 3 2 1) ;; shall return 14
(solution-1 3 2 1) ;; shall return 14
(solution-1 2 2 2) ;; shall return 10

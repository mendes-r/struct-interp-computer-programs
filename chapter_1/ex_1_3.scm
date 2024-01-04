;; exercise 1.3
(define (ex a b c) 
  (cond 
    ((and (< a b) (< a c)) (+ a (* b b) (* c c)))
    ((and (< b a) (< b c)) (+ b (* a a) (* c c)))
    ((= 1 1) (+ c (* a a) (* b b)))))

;; tests
(ex 1 2 3) ;; shall return 14
(ex 2 1 3) ;; shall return 14
(ex 3 2 1) ;; shall return 14
(ex 3 2 1) ;; shall return 14
(ex 2 2 2) ;; shall return 10

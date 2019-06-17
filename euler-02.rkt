#lang racket 

;; Integer, Integer, Integer -> Integer
;; Recieves the 1º, 2º elements of Fibonacci sequence,
;; then the limit and produces the sum of even numbers.

;; The Fibonacci sequence is odd-odd-even-odd-odd-even
;; and then enters in recursion of the every 2º and 3º
;; number.

(define even-fib-sum
  (lambda (fib1 fib2 limit)  
    (let* ((1fib (+ fib1 fib2))     
           (2fib (+ fib2 1fib))  
           (3fib (+ 1fib 2fib)))
      (cond
         ((< limit 3fib) 0)
          (else (+ 3fib (even-fib-sum 2fib 3fib limit)))))))

(even-fib-sum 1 0 10) ; 10
(even-fib-sum 1 0 100); 44

;; INTERACTIONS:
(even-fib-sum 1 0 4000000) ; 4613732
; first:
;; 1fib = (+ 1 0) = 1 odd
;; 2fib = (+ 0 1) = 1 odd
;; 3fib = (+ 1 1) = 2 even
; then (even-fib-sum 1 2 4000000)

; second:
;; 1fib = (+ 1 2) = 3 odd
;; 2fib = (+ 2 3) = 5 odd
;; 3fib = (+ 5 3) = 8 even
; then (even-fib-sum 5 8 4000000)

; third:
;; 1fib = (+ 5 8)   = 13 odd
;; 2fib = (+ 8 13)  = 21 odd
;; 3fib = (+ 13 21) = 34 even
; then (even-fib-sum 21 34 4000000)

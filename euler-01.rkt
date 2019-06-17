#lang racket
;; Problem:
;; Find the sum of all the multiples of 3 or 5 below 1000

;; define a list from 0..999
(define number-list (build-list 1000 values))

;; Integer -> Bool
;; Returns if a Integer is multiple of 5
(define (multiple-of-5? n)
  (if (integer? n)
      (= (modulo n 5) 0)
      #f))

;; Integer -> Bool
;; Returns if a Integer is a multiple of 3.
(define (multiple-of-3? n)
  (if (integer? n)
      (= (modulo n 3) 0)
      #f))

;; define a list of multiples of 3 in number-list
(define multiples-3 (filter multiple-of-3? number-list))
;; define a list of multiples of 5 in number-list
(define multiples-5 (filter multiple-of-5? number-list))

;; remove the multiples of 5 from multiples of 3 list
(define multiples-3* (remove* multiples-5 multiples-3))
;; sum all multiples of 3 and 5
(+ (apply + multiples-3*) (apply + multiples-5))

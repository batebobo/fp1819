#lang racket
(require rackunit)
(require rackunit/text-ui)
(require "1-reverse.rkt")

(define (palindrome? n)
  (define (helper current result)
    (cond
      ((< current result) #f)
      ((or (= current result) (= (quotient current 10) result)) #t)
      (else (helper (quotient current 10)
                    (+ (* result 10) (remainder current 10))))))
  (if (= 0 (remainder n 10))
      #f
      (helper n 0)))

(define (palindrome2? n)
  (= n (my-reverse n)))


; Искаме да проверим дали дадено число е палиндром.


(define tests (test-suite
  "Palindrome tests"

  (check-true (palindrome? 1))
  (check-false (palindrome? 10))
  (check-true (palindrome? 101))
  (check-true (palindrome? 121))
  (check-false (palindrome? 122))
  (check-false (palindrome? 221))
  (check-false (palindrome? 1220))
  (check-true (palindrome? 1221))
  (check-false (palindrome? 12210))
  (check-true (palindrome? 1234321))
  (check-true (palindrome? 12344321))
  (check-false (palindrome? 123421))
  (check-false (palindrome? 124321))
  (check-true (palindrome2? 1))
  (check-false (palindrome2? 10))
  (check-true (palindrome2? 101))
  (check-true (palindrome2? 121))
  (check-false (palindrome2? 122))
  (check-false (palindrome2? 221))
  (check-false (palindrome2? 1220))
  (check-true (palindrome2? 1221))
  (check-false (palindrome2? 12210))
  (check-true (palindrome2? 1234321))
  (check-true (palindrome2? 12344321))
  (check-false (palindrome2? 123421))
  (check-false (palindrome2? 124321))
))

(run-tests tests 'verbose)

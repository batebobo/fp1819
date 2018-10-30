#lang racket
(require rackunit)
(require rackunit/text-ui)
(require "5-accumulate.rkt")

; Искаме да намерим броя комбинации на n-елемента, k-ти ред.

(define (combination k n)
  (/ (accumulate * 1 1 n (lambda (x) x) (lambda (x) (+ x 1)))
     (* (accumulate * 1 1 k (lambda (x) x) (lambda(x) (+ x 1)))
        (accumulate * 1 1 (- n k) (lambda (x) x) (lambda (x) (+ x 1))))))


(define tests (test-suite
  "Combination tests"

  (test-case "" (check-equal? (combination 3 7) 35))
  (test-case "" (check-equal? (combination 4 12) 495))
))

(run-tests tests 'verbose)


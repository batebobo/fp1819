#lang racket
(require rackunit)
(require rackunit/text-ui)
(require "5-accumulate.rkt")

; Искаме да намерим броя вариации на n елемента, k-ти ред
(define (variation k n)
  (/ (accumulate * 1 1 n (lambda (x) x) (lambda (x) (+ x 1)))
     (accumulate * 1 1 (- n k) (lambda (x) x) (lambda (x) (+ x 1)))))


(define tests (test-suite
  "Variation tests"

  (test-case "" (check-equal? (variation 3 7) 210))
  (test-case "" (check-equal? (variation 4 12) 11880))
))

(run-tests tests 'verbose)


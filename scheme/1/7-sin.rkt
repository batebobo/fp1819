#lang racket
(require rackunit)
(require rackunit/text-ui)

; Напишете функция, която по подадено реално число x и естествено n пресмята sin(x) + sin(x^2) + ... + sin(x^n)

(define tests (test-suite
  "sin tests"

  (test-case "n = 0" (check-equal? (sum-sins pi 0) 0.84))
  (test-case "n = 1" (check-equal? (sum-sins (/ pi 2) 1) 1))
))

(run-tests tests 'verbose)


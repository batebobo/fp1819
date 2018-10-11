#lang racket
(require rackunit)
(require rackunit/text-ui)

; Напишете функция, която по подадено реално число x и естествено n пресмята sin(x) + sin(x^2) + ... + sin(x^n)
(define (sum-sins x n)
  (if (= n 1)
      (sin x)
      (+ (sin (expt x n)) (sum-sins x (- n 1)))))

(define tests (test-suite
  "sin tests"

  (test-case "n = 0" (check-equal? (sum-sins pi 1) 1.22))
  (test-case "n = 1" (check-equal? (sum-sins (/ pi 2) 1) 1))
))

(run-tests tests 'verbose)


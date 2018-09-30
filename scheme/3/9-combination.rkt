#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да намерим броя комбинации на n-елемента, k-ти ред.


(define tests (test-suite
  "Combination tests"

  (test-case "" (check-equal? (combination 3 7) 35))
  (test-case "" (check-equal? (combination 4 12) 495))
))

(run-tests tests 'verbose)


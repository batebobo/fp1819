#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да намерим броя вариации на n елемента, k-ти ред

(define tests (test-suite
  "Variation tests"

  (test-case "" (check-equal? (variation 3 7) 210))
  (test-case "" (check-equal? (variation 4 12) 11880))
))

(run-tests tests 'verbose)


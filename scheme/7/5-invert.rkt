#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да обърнем даден граф

(define tests
  (test-suite "Invert tests"

    (test-case "" (check-equal? (invert g1) '((1) (2 1) (3 4 2) (4))))
  )
)

(run-tests tests 'verbose)


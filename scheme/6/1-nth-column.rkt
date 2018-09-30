#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да вземем н-тата колона на дадена матрица

(define tests
  (test-suite "nth col tests"

    (test-case "" (check-equal? (nth-col '((1 2 3) (4 5 6) (7 8 9)) 2) '(3 6 9)))
  )
)

(run-tests tests 'verbose)
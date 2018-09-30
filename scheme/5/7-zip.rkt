#lang racket
(require rackunit)
(require rackunit/text-ui)

; реализирайте функцията zip

(define tests
  (test-suite "zip tests"

    (test-case "" (check-equal? (my-zip lst-1 lst-2) '((1 2) (3 4) (5 6) (7 7))))
  )
)

(run-tests tests 'verbose)
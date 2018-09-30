#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да направим поток с числата в даден интервал

(define tests
  (test-suite "Enum tests"

    (test-case "" (check-equal? (stream->list (enum 1 3)) '(1 2 3)))
  )
)

(run-tests tests 'verbose)


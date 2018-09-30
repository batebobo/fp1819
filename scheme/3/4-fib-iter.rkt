#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да намерим n-тото число на Фибоначи.
; Искаме да го намерим и итеративно.

(define tests (test-suite
  "Fiboacci tests"

  (test-case "" (check-equal? (fib 1) 1))
  (test-case "" (check-equal? (fib 2) 1))
  (test-case "" (check-equal? (fib 3) 2))
  (test-case "" (check-equal? (fib 4) 3))
  (test-case "" (check-equal? (fib 5) 5))
  (test-case "" (check-equal? (fib 6) 8))
  (test-case "" (check-equal? (fib 20) 6765))
))

(run-tests tests 'verbose)


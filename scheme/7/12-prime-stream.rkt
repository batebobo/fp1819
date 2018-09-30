#lang racket
(require rackunit)
(require rackunit/text-ui)

; искаме поток от всички прости числа

(define tests
  (test-suite "prime stream tests"

    (test-case "" (check-equal? (stream-ref (prime-stream) 1) 3))
    (test-case "" (check-equal? (stream-ref (prime-stream) 2) 5))
    (test-case "" (check-equal? (stream-ref (prime-stream) 3) 7))
    (test-case "" (check-equal? (stream-ref (prime-stream) 4) 11))
    (test-case "" (check-equal? (stream-ref (prime-stream) 10) 31))
  )
)

(run-tests tests 'verbose)


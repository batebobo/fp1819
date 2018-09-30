#lang racket
(require rackunit)
(require rackunit/text-ui)
(provide n-stream)

; искаме поток от естествените числа след дадено такова

(define tests
  (test-suite "n-stream tests"

    (test-case "" (check-equal? (stream-ref (n-stream 1337) 201) 1538))
  )
)

(run-tests tests 'verbose)


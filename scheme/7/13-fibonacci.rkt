#lang racket
(require rackunit)
(require rackunit/text-ui)

; искаме поток, съставен от числата на фибоначи

(define tests
  (test-suite "fibonacci stream tests"

    (test-case "" (check-equal? (stream-ref (fibonacci) 1) 1))
    (test-case "" (check-equal? (stream-ref (fibonacci) 2) 2))
    (test-case "" (check-equal? (stream-ref (fibonacci) 3) 3))
    (test-case "" (check-equal? (stream-ref (fibonacci) 4) 5))
    (test-case "" (check-equal? (stream-ref (fibonacci) 5) 8))
    (test-case "" (check-equal? (stream-ref (fibonacci) 60) 2504730781961))
  )
)

(run-tests tests 'verbose)


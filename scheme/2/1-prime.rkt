#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да проверим дали дадено число е просто

(define tests (test-suite
  "prime tests"

  (test-case "" (check-true (prime? 2)))
  (test-case "" (check-true (prime? 3)))
  (test-case "" (check-false (prime? 4)))
  (test-case "" (check-false (prime? 10)))
  (test-case "" (check-true (prime? 11)))
))

(run-tests tests 'verbose)


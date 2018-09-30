#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да проверим дали даден низ съдържа в себе си друг даден низ.

(define tests (test-suite
  "Substring tests"

  (check-true (substr? 1234 23))
  (check-true (substr? 1234 12))
  (check-true (substr? 1234 1))
  (check-true (substr? 1234 2))
  (check-true (substr? 1234 4))
))

(run-tests tests 'verbose)


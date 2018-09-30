#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да преброим цифрите на дадено число

(define tests (test-suite
  "count-digits tests"

  (test-case "single-digit" (check-equal? (count-digits 3) 1))
  (test-case "many digits" (check-equal? (count-digits 54321) 5))
  (test-case "no-digits" (check-equal? (count-digits 0) 0))
))

(run-tests tests 'verbose)


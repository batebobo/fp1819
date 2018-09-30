#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да повдигнем число на степен, използвайки процедурата accumulate

(define tests (test-suite
  "Pow tests"

  (test-case "" (check-equal? (pow 3 3) 27))
  (test-case "" (check-equal? (pow 2 10) 1024))
))

(run-tests tests 'verbose)


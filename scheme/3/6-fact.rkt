#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да дефинираме процедурата, която намира n!, като използваме accumulate

(define tests (test-suite
  "Factorial tests"

  (test-case "" (check-equal? (fact 5) 120))
  (test-case "" (check-equal? (fact 3) 6))
))

(run-tests tests 'verbose)


#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да повдигнем х на степен n

(define tests (test-suite
  "pow tests"

  (test-case "zero power" (check-equal? (pow 192 0) 1))
  (test-case "positive power" (check-equal? (pow 2 10) 1024))
  (test-case "negative base" (check-equal? (pow -2 11) -2048))
  ; Ако се чувствате смели
  ; (test-case "negative power" (check-equal? (pow 2 -2) 0.25))
))

(run-tests tests 'verbose)


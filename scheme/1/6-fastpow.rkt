#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме функция, която по дадени две числа - x, k, ни дава x^k, но в по-малко стъпки
; от последната задача.

(define tests (test-suite
  "fastpow tests"

  (test-case "zero power" (check-equal? (fastpow 192 0) 1))
  (test-case "positive power" (check-equal? (fastpow 2 10) 1024))
  (test-case "negative base" (check-equal? (fastpow -2 11) -2048))
  ; Ако се чувствате смели
  ; (test-case "negative power" (check-equal? (pow 2 -2) 0.25))
))

(run-tests tests 'verbose)


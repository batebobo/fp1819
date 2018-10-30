#lang racket
(require rackunit)
(require rackunit/text-ui)
(require "5-accumulate.rkt")

; Искаме да дефинираме процедурата, която намира n!, като използваме accumulate
(define (fact n)
  (accumulate * 1 1 n (lambda (x) x) (lambda (x) (+ x 1)))
)

(define tests (test-suite
  "Factorial tests"

  (test-case "" (check-equal? (fact 5) 120))
  (test-case "" (check-equal? (fact 3) 6))
))

(run-tests tests 'verbose)


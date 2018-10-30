#lang racket
(require rackunit)
(require rackunit/text-ui)
(require "5-accumulate.rkt")

; Искаме да повдигнем число на степен, използвайки процедурата accumulate
(define (pow x k)
  (accumulate * 1 1 k (lambda (n) x) (lambda (x) (+ x 1)))
)

(define tests (test-suite
  "Pow tests"

  (test-case "" (check-equal? (pow 3 3) 27))
  (test-case "" (check-equal? (pow 2 10) 1024))
))

(run-tests tests 'verbose)


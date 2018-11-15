#lang racket
(require rackunit)
(require rackunit/text-ui)
(require "8-take.rkt")

; Искаме да пропуснем първите n елемента от даден списък
(define (drop lst n)
  (reverse (take (- (length lst) n) (reverse lst))))

(define tests
  (test-suite "Drop tests"

    (test-case "" (check-equal? (drop '(1 2 3 4 5 6) 3) '(4 5 6)))
    (test-case "" (check-equal? (drop '(1 2 3 4 5 6) 0) '(1 2 3 4 5 6)))
    (test-case "" (check-equal? (drop '(1 2 3 4 5 6) 5) '(6)))
  )
)

(run-tests tests 'verbose)


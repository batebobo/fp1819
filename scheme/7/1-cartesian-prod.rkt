#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да намерим декартовото произведение на две множества

(define tests
  (test-suite "Cartesian product tests"

    (test-case "" (check-equal? (cartesian-product '(1 2 3) '(4 5 6))) 
				'((1 4) (1 5) (1 6) (2 4) (2 5) (2 6) (3 4) (3 5) (3 6)))
  )
)

(run-tests tests 'verbose)


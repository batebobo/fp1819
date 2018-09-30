#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да преброим колко цифри има дадено число. Ама итеративно.

(define tests
  (test-suite "Iterative count digits"

    (test-case "" (check-equal? (count-digits-iter 0) 0))
    (test-case "" (check-equal? (count-digits-iter 1) 1))
    (test-case "" (check-equal? (count-digits-iter 9) 1))
    (test-case "" (check-equal? (count-digits-iter 10) 2))
    (test-case "" (check-equal? (count-digits-iter 100) 3))
  )
)

(run-tests tests 'verbose)


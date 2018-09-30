#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме в дадена маррица да останат само елементи, които удовлетворяват даден предикат

(define tests
  (test-suite "Filter matrix tests"

    (test-case "" (check-equal? (filter-matrix even? '((1 2 3) (4 5 6) (7 8 9))) '((2) (4 6) (8))))
  )
)

(run-tests tests 'verbose)


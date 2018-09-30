#lang racket
(require rackunit)
(require rackunit/text-ui)

; Обединение на двата списъка (приемаме, че няма повтарящи се елементи).

(define tests
  (test-suite "Union tests"

    (test-case "" (check-equal? (union '(2 3 5) '(4 1 3 2)) '(5 4 1 3 2)))
    (test-case "" (check-equal? (union '(1 2 3) '(1 2 3)) '(1 2 3)))
    (test-case "" (check-equal? (union '(1) '()) '(1)))
    (test-case "" (check-equal? (union '() '()) '()))
  )
)

(run-tests tests 'verbose)


#lang racket
(require rackunit)
(require rackunit/text-ui)

; Обединение на двата списъка (приемаме, че няма повтарящи се елементи).
(define (union l1 l2)
  (if (null? l1)
      l2
      (let ((l1-head (car l1)))
        (if (member l1-head l2)
            (union (cdr l1) l2)
            (cons l1-head (union (cdr l1) l2))))))

(define tests
  (test-suite "Union tests"

    (test-case "" (check-equal? (union '(2 3 5) '(4 1 3 2)) '(5 4 1 3 2)))
    (test-case "" (check-equal? (union '(1 2 3) '(1 2 3)) '(1 2 3)))
    (test-case "" (check-equal? (union '(1) '()) '(1)))
    (test-case "" (check-equal? (union '() '()) '()))
  )
)

(run-tests tests 'verbose)


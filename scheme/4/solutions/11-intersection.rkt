#lang racket
(require rackunit)
(require rackunit/text-ui)

; Сечение на двата списъка (приемаме, че няма повтарящи се елементи).
(define (intersection l1 l2)
  (if (null? l1)
      '()
      (let ((l1-head (car l1)))
        (if (member l1-head l2)
            (cons l1-head (intersection (cdr l1) l2))
            (intersection (cdr l1) l2)))))

(define tests
  (test-suite "Intersection tests"

    (test-case "" (check-equal? (intersection '(2 3 5) '(4 1 3 2)) '(2 3)))
    (test-case "" (check-equal? (intersection '(1 2 3) '(1 2 3)) '(1 2 3)))
    (test-case "" (check-equal? (intersection '(1 2 3) '(4 5 6)) '()))
    (test-case "" (check-equal? (intersection '(1) '(1)) '(1)))
  )
)

(run-tests tests 'verbose)


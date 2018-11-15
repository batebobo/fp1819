#lang racket
(require rackunit)
(require rackunit/text-ui)

(define lst-1 '(1 3 5 7))
(define lst-2 '(2 4 6 7))

(define (my-zip l-1 l-2)
  (if (or (null? l-1) (null? l-2))
      '()
      (cons (cons (car l-1) (car l-2)) (my-zip (cdr l-1) (cdr l-2)))))

(define tests
  (test-suite "zip tests"

    (test-case "" (check-equal? (my-zip lst-1 lst-2) '((1 2) (3 4) (5 6) (7 7))))
  )
)

(run-tests tests 'verbose)
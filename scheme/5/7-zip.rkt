#lang racket
(require rackunit)
(require rackunit/text-ui)

; реализирайте функцията zip


(define lst-1 '(1 3 5 7))
(define lst-2 '(2 4 6 7))
(define tests
  (test-suite "zip tests"

    (test-case "" (check-equal? (my-zip lst-1 lst-2) '((1 2) (3 4) (5 6) (7 7))))
    (test-case "" (check-equal? (my-zip '(1 2) '(3 4)) '((1 3) (2 4))))
    (test-case "" (check-equal? (my-zip '(1 2 3) '()) '()))
    (test-case "" (check-equal? (my-zip '() '(4 5 6)) '()))
    (test-case "" (check-equal? (my-zip '(8 9) '(3 2 1 4)) '((8 3) (9 2))))
    (test-case "" (check-equal? (my-zip '(8 9 1 2) '(3 4)) '((8 3) (9 4))))
  )
)

(run-tests tests 'verbose)


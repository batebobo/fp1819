#lang racket
(require rackunit)
(require rackunit/text-ui)

; Да се конструира списъкът с числата от start до end.
(define (range start end)
  (define (helper i result)
    (if (< i start)
        result
        (helper (- i 1) (cons i result))))
  (helper end '()))

(define tests
  (test-suite "Range tests"

    (test-case "" (check-equal? (range 1 1) '(1)))
    (test-case "" (check-equal? (range 1 4) '(1 2 3 4)))
  )
)

(run-tests tests 'verbose)


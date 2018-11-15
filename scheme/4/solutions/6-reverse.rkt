#lang racket
(require rackunit)
(require rackunit/text-ui)

; Търсим функция, която обръща даден списък
(define (my-reverse l)
  (define (helper current-l result)
    (if (null? current-l)
        result
        (helper (cdr current-l)
                (cons (car current-l) result))))
  (helper l '()))

(define tests
  (test-suite "Reverse tests"
      (check-equal? (reverse '(1 2 3)) (reverse '(1 2 3)))
      (check-equal? (reverse '()) '())
      (check-equal? (reverse '(1)) '(1))
      (check-equal? (reverse '(1 5)) '(5 1))
  )
)

(run-tests tests 'verbose)

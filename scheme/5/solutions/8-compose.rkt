#lang racket
(require rackunit)
(require rackunit/text-ui)

;Композираме функцията f(x) n пъти - f ( f ( ... ( f (x)) .. ))
(define (compose f x n)
  (if (= n 0)
      x
      (f (compose f x (- n 1)))))

(define tests
  (test-suite "compose tests"

    (test-case "" (check-equal? (compose (lambda (x) (/ x 2)) 1024 3) 128))
    (test-case "" (check-equal? (compose (lambda (x) (* 10 x)) 5 3) 5000))
  )
)

(run-tests tests 'verbose)


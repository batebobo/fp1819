#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да намерим n-тото число на Фибоначи.
; Искаме да го намерим и итеративно.
(define (fib n)
  (if (<= n 2)
    1
    (+ (fib (- n 1))
       (fib (- n 2)))))

(define (fib-iter n)
  (define (helper current previous count)
    (if (= count 1)
        current
        (helper (+ current previous) current (- count 1))))
  (helper 1 0 n))

(define tests (test-suite
  "Fiboacci tests"

  (test-case "" (check-equal? (fib 1) 1))
  (test-case "" (check-equal? (fib 2) 1))
  (test-case "" (check-equal? (fib 3) 2))
  (test-case "" (check-equal? (fib 4) 3))
  (test-case "" (check-equal? (fib 5) 5))
  (test-case "" (check-equal? (fib 6) 8))
  (test-case "" (check-equal? (fib 20) 6765))

  (test-case "" (check-equal? (fib-iter 1) 1))
  (test-case "" (check-equal? (fib-iter 2) 1))
  (test-case "" (check-equal? (fib-iter 3) 2))
  (test-case "" (check-equal? (fib-iter 4) 3))
  (test-case "" (check-equal? (fib-iter 5) 5))
  (test-case "" (check-equal? (fib-iter 6) 8))
  (test-case "" (check-equal? (fib-iter 20) 6765))
))

(run-tests tests 'verbose)


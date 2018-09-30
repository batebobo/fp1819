#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да намерим сумата на числа в интервал

(define tests (test-suite
  "sum tests"

  (test-case "start < end" (check-equal? (sum 1 100) 5050))
  (test-case "start > end" (check-equal? (sum 500 150) 0))
  (test-case "start == end" (check-equal? (sum 9 9) 9))
  (test-case "negative numbers" (check-equal? (sum -10 0) -55))
))

(run-tests tests 'verbose)


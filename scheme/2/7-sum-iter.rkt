#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да сумираме числа в даден интервал.
; Искаме два варианта - такъв, който генерира рекурсивен процес и такъв, който
; генерира итеративен.

(define tests (test-suite
  "Iterative sum"

  (test-case "" (check-equal? (sum-iter 0 0) 0))
  (test-case "" (check-equal? (sum-rec 0 0) 0))
  (test-case "" (check-equal? (sum-iter 1 100) 5050))
  (test-case "" (check-equal? (sum-rec 1 100) 5050))
))

(run-tests tests 'verbose)


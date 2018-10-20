#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да сумираме числа в даден интервал.
; Искаме два варианта - такъв, който генерира рекурсивен процес и такъв, който
; генерира итеративен.

(define (sum-rec start end)
  (if (>= start end)
    end
    (+ start (sum-rec (+ start 1) end))))


(define (sum-iter start end)
  (define (helper current result)
    (if (> current end)
      result
      (helper (+ current 1)
              (+ result current))))
  (helper start 0))

(define tests (test-suite
  "sum"

  (test-case "" (check-equal? (sum-iter 0 0) 0))
  (test-case "" (check-equal? (sum-rec 0 0) 0))
  (test-case "" (check-equal? (sum-iter 1 100) 5050))
  (test-case "" (check-equal? (sum-rec 1 100) 5050))
))

(run-tests tests 'verbose)


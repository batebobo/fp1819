#lang racket
(require rackunit)
(require rackunit/text-ui)

; Сумира числата в даден интервал.
; start последователно обхожда целия интервал.
(define (sum start end)
  (if (> start end)
      0
      (+ start (sum (+ start 1) end))))

(define tests
  (test-suite "sum tests"

    (test-case "start < end" (check-equal? (sum 1 100) 5050))
    (test-case "start > end" (check-equal? (sum 500 150) 0))
    (test-case "start == end" (check-equal? (sum 9 9) 9))
    (test-case "negative numbers" (check-equal? (sum -10 0) -55))
  )
)

(run-tests tests 'verbose)


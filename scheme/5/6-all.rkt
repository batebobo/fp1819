#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да проверим дали всички елементи на списък удовлетворяват даден предикат

(define tests
  (test-suite "All tests"
    
    (test-case "" (check-true (all? '(2 4 6) even?)))
    (test-case "" (check-false (all? '(2 5 6 8) odd?)))
  )
)

(run-tests tests 'verbose)


#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да проверим дали някой елемент в даден списък удовлетворява даден предикат


(define tests
  (test-suite "Any tests"
    
    (test-case "" (check-true (any? '(1 2 3 4 5 6 7) even?)))
    (test-case "" (check-false (any? '(2 4 6 8) odd?)))
  )
)

(run-tests tests 'verbose)


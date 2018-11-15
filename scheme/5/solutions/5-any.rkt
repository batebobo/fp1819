#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да проверим дали някой елемент в даден списък удовлетворява даден предикат
(define (any? lst pred)
  (cond
    ((null? lst) #f)
    ((pred (car lst)) #t)
    (else (any? (cdr lst) pred))))


(define tests
  (test-suite "Any tests"
    
    (test-case "" (check-true (any? '(1 2 3 4 5 6 7) even?)))
    (test-case "" (check-false (any? '(2 4 6 8) odd?)))
  )
)

(run-tests tests 'verbose)


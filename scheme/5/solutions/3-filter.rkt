#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да вземем само елементите от даден списък, които ни интересуват.
(define (my-filter lst pred)
  (cond
    ((null? lst) '())
    ((pred (car lst)) (cons (car lst) (my-filter (cdr lst) pred)))
    (else (my-filter (cdr lst) pred))))


(define tests
  (test-suite "Filter tests"
    
    (test-case "base" (check-equal? (my-filter '() even?) '()))
    (test-case "!base" (check-equal? (my-filter (range 1 9) even?) '(2 4 6 8)))
  )
)

(run-tests tests 'verbose)


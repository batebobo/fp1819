#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме функция, която връща най-малкия елемент на списък.
; Искаме и такава, която връща най-големия.

(define tests
  (test-suite "min max tests"
    
    (test-case "min" (check-equal? (my-min '(1 2 3 4 5 6 7)) 1))
    (test-case "max" (check-equal? (my-max '(1 2 3 4 5 6 7)) 7))
  )
)

(run-tests tests 'verbose)


#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да проверим дали даден елемент се среща в даден списък

(define my-list '(1 2 3 4 5 6))

(define tests
  (test-suite "member tests"
  
    (test-case "base" (check-false (member? 2 '())))
    (test-case "!base" (check-true (member? 2 my-list)))
  )
)

(run-tests tests 'verbose)


#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да направим списък от всички стойности в даден такъв.
; Искаме нивата на влагане да изчезнат.
(define (flatten lst)
    (cond ((null? lst) '())
          ((not (pair? lst)) (list lst))
          (else (append (flatten (car lst))
                        (flatten (cdr lst))))))


(define tests
  (test-suite "Map tests"
    
    (test-case "" (flatten '(1 2 (3 (4 5) 6) 7 8)) '(1 2 3 4 5 6 7 8))
  )
)

(run-tests tests 'verbose)


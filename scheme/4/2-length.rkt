#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да намерим дължината на даден списък

(define my-list-1 '(1 2 3 4 5 6 '("asd" 10 9 8) "b" "q" "Java" "sucks" "JS" "rocks"))
(define my-list-2 '(()))

(define tests
  (test-suite "Length tests"
  
    (test-case "base" (check-equal? (my-len '()) 0))
    (test-case "many elements" (check-equal? (my-len my-list-1) 13))
    (test-case "wow" (check-equal? (my-len my-list-2) 1))
  )
)

(run-tests tests 'verbose)


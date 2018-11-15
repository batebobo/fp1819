#lang racket
(require rackunit)
(require rackunit/text-ui)
(require "8-take.rkt")

; Искаме функция, която приема списък и две числа и връща
; списък, състоящ се от елементите на списъка, които се намират на индекси от първото число до второто.
(define (slice lst begin end)
  (if (= begin 0)
      (take (+ end 1) lst)
      (slice (cdr lst) (- begin 1) (- end 1))))

(define tests
 (test-suite "Slice tests"
     (check-equal? (slice '(1 9 8 2) 1 2) '(9 8))
     (check-equal? (slice '(9 7 2 3) 0 2) '(9 7 2)) 
  )
)

(run-tests tests 'verbose)

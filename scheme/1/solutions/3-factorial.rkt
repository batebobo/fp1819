#lang racket
(require rackunit)
(require rackunit/text-ui)

; Изчислява факториел.
; Забележете сходството на решението с математическата дефиниция на факториел.
(define (factorial n)
  (if (<= n 1)
      1
      (* n (factorial (- n 1)))))

(define tests
  (test-suite "factorial tests"

    (test-case "" (check-equal? (factorial 0) 1))
    (test-case "" (check-equal? (factorial 3) 6))
    (test-case "" (check-equal? (factorial 19) 121645100408832000))
  )
)

(run-tests tests 'verbose)


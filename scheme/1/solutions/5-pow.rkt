#lang racket
(require rackunit)
(require rackunit/text-ui)

; Вдига x на степен n.
; Подобно е на вградената функция expt.
(define (pow x n)
  (if (= 0 n)
      1
      (* x (pow x (- n 1)))))

(define tests
  (test-suite "pow tests"

    (test-case "zero power" (check-equal? (pow 192 0) 1))
    (test-case "positive power" (check-equal? (pow 2 10) 1024))
    (test-case "negative base" (check-equal? (pow -2 11) -2048))
    ; Ако се чувствате смели
    ; (test-case "negative power" (check-equal? (pow 2 -2) 0.25))
  )
)

(run-tests tests 'verbose)


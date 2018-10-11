#lang racket
(require rackunit)
(require rackunit/text-ui)
(define (square x) (* x x))

; Бързо степенуване.
; Работи като нормалното, като единствената разлика е оптимизацията при четни n.
(define (fastpow x n)
  (cond
    ((= n 0) 1)
    ; Викаме помощната процедура за вдигане на квадрат, защото нещо такова:
    ; (* (fastpow x (/n 2)) (fastpow x (/ n 2)))
    ; Би направило две извиквания към fastpow, от които няма смисъл.
    ; Вместо fastpow може да се ползва и вградената процедура за степенуване - expt.
    ((even? n) (square (fastpow x (/ n 2))))
    (else (* x (fastpow x (- n 1))))))

(define tests (test-suite
  "fastpow tests"

  (test-case "zero power" (check-equal? (fastpow 192 0) 1))
  (test-case "positive power" (check-equal? (fastpow 2 10) 1024))
  (test-case "negative base" (check-equal? (fastpow -2 11) -2048))
  ; Ако се чувствате смели
  ; (test-case "negative power" (check-equal? (pow 2 -2) 0.25))
))

(run-tests tests 'verbose)


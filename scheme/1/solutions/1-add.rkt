#lang racket
(require rackunit)
(require rackunit/text-ui)

;1.1 - Преведете следващите изрази в префиксна форма
; Попълвате на мястото на (void)

; a - ((2 + 3/16) / (9 * 2.78)) + ((5 / 2) - 6)
(define a (+ (/ (+ 2 (/ 3 16)) (* 9 2.78)) (- (/ 5 2) 6)))

; b - (15 + 21 + (3 / 15) + (7 - (2 * 2))) / 16
(define b (/ (+ (+ 15 21 (/ 3 15)) (- 7 (* 2 2))) 16))

; c - (16^4 + 95/2)
(define c (+ (expt 16 4) (/ 95 2)))

;Пример за събиране на числа
(define (add a b)
  (+ a b))


(define first-tests
  (test-suite
    "Translated expressions tests"

    (test-case "1.1-a"

      (check-equal? a -3.412569944044764))

    (test-case "1.1-b"
      (check-equal? b 49/20))

    (test-case "1.1-c"
      (check-equal? c 131167/2))))

(run-tests first-tests 'verbose)


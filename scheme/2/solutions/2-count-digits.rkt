#lang racket
(require rackunit)
(require rackunit/text-ui)
(provide count-digits)

; Искаме да преброим цифрите на дадено число
(define (count-digits n)
  (if (<= n 0)
      0
      (+ 1 (count-digits (quotient n 10)))))

(define tests
  (test-suite "count-digits tests"

    (test-case "single-digit" (check-equal? (count-digits 3) 1))
    (test-case "many digits" (check-equal? (count-digits 54321) 5))
    (test-case "no-digits" (check-equal? (count-digits 0) 0))
  )
)

(run-tests tests 'verbose)


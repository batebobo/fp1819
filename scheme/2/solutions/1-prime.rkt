#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да проверим дали дадено число е просто
(define (prime? n)
  (define (helper possible-divisor)
    (cond
      ((<= possible-divisor 1) #t)
      ((= (remainder n possible-divisor) 0) #f)
      (else (helper (- possible-divisor 1)))))
  (helper (- n 1)))

; втори начин, чрез accumulate

(define (accumulate op null-value term start next end)
  (if (> start end)
      null-value
      (op (term start) (accumulate op null-value term (next start) next end))))

(define (prime2? n)
  (define (divides x y) (= (remainder y x) 0))
  (define (divisors-count n)
    (accumulate + 0 (lambda (i) (if (divides i n) 1 0)) 2 (lambda (x) (+ x 1)) (sqrt n))
  )
  (= (divisors-count n) 0)
)


(define tests
  (test-suite "prime tests"

    (test-case "" (check-true (prime? 2)))
    (test-case "" (check-true (prime? 3)))
    (test-case "" (check-false (prime? 4)))
    (test-case "" (check-false (prime? 10)))
    (test-case "" (check-true (prime? 11)))

    (test-case "" (check-true (prime2? 2)))
    (test-case "" (check-true (prime2? 3)))
    (test-case "" (check-false (prime2? 4)))
    (test-case "" (check-false (prime2? 10)))
    (test-case "" (check-true (prime2? 11)))
  )
)

(run-tests tests 'verbose)


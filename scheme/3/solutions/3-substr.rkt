#lang racket
(require rackunit)
(require rackunit/text-ui)

(define (count-digits-iter n)
  (define (helper n digits)
    (if (< n 10)
        (+ digits 1)
        (helper (quotient n 10) (+ digits 1))))
  (helper n 0))

; Искаме да проверим дали даден низ съдържа в себе си друг даден низ.
(define (substr? n a)
  
  (define (ends-with-a? i)
    (= (remainder i (expt 10 (count-digits-iter a)))
       a))
  
  (define (helper current)
    (cond
       ((< current a) #f)
       ((ends-with-a? current) #t)
       (else (helper (quotient current 10)))))
  (helper n))

(define tests (test-suite
  "Substring tests"

  (check-true (substr? 1234 23))
  (check-true (substr? 1234 12))
  (check-true (substr? 1234 1))
  (check-true (substr? 1234 2))
  (check-true (substr? 1234 4))
))

(run-tests tests 'verbose)


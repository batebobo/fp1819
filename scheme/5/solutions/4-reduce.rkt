#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да натрупаме резултат, обхождайки списък.
(define (reduce f lst id)
  (if (null? lst)
      id
      (f (car lst)
         (reduce f (cdr lst) id))))

(define tests
  (test-suite "Reduce tests"
    
    (test-case "" (check-equal? (reduce + '(1 2 3 4 5) 0) 15))
    (test-case "" (check-equal? (reduce * '(1 2 4 6 8 10) 1) 3840))
  )
)

(run-tests tests 'verbose)


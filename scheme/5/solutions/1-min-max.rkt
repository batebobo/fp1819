#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме функция, която връща най-малкия елемент на списък.
; Искаме и такава, която връща най-големия.
(define (the-smaller-of x y)
  (if (< x y)
      x
      y))

(define (the-bigger-of x y)
  (if (> x y)
      x
      y))
(define (my-min lst)
  (define (helper L init)
        (if (null? L)
            init
            (helper (cdr L) (the-smaller-of init (car L)))))
  (let ((min-init +inf.0))
    (helper lst min-init)))

(define (my-min-2 lst)
  (foldl the-smaller-of +inf.0 lst))

(define (my-max lst)
  (foldl the-bigger-of -inf.0 lst))

(define tests
  (test-suite "min max tests"
    
    (test-case "min" (check-equal? (my-min '(1 2 3 4 5 6 7)) 1))
    (test-case "max" (check-equal? (my-max '(1 2 3 4 5 6 7)) 7))
  )
)

(run-tests tests 'verbose)


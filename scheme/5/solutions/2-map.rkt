#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да приложим функция върху всеки от елементите на списък.
(define (my-map lst f)
  (if (null? lst)
      '()
      (cons (f (car lst)) (my-map (cdr lst) f))))

(define tests
  (test-suite "Map tests"
    
    (test-case "base" (check-equal? (my-map '() (lambda (x) (* x x))) '()))
    (test-case "!base" (check-equal? (my-map '(1 2 3 4 5)  (lambda (x) (* x x))) '(1 4 9 16 25)))
  )
)

(run-tests tests 'verbose)


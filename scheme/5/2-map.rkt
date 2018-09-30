#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да приложим функция върху всеки от елементите на списък.

(define tests
  (test-suite "Map tests"
    
    (test-case "base" (check-equal? (my-map '() sqr) '()))
    (test-case "!base" (check-equal? (my-map my-list  sqr) '(1 4 9 16 25)))
  )
)

(run-tests tests 'verbose)


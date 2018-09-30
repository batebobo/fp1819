#lang racket
(require rackunit)
(require rackunit/text-ui)
(provide repeat-list)

; искаме да направим поток от повтаряния на даден списък

(define tests
  (test-suite "repeat list stream test"

    (test-case "" (check-equal? (stream-ref (repeat-list '(1 2 3)) 0) 1))
    (test-case "" (check-equal? (stream-ref (repeat-list '(1 2 3)) 1) 2))
    (test-case "" (check-equal? (stream-ref (repeat-list '(1 2 3)) 2) 3))
    (test-case "" (check-equal? (stream-ref (repeat-list '(1 2 3)) 3) 1))
    (test-case "" (check-equal? (stream-ref (repeat-list '(1 2 3)) 4) 2))
  )
)

(run-tests tests 'verbose)


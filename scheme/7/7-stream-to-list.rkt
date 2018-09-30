#lang racket
(require rackunit)
(require rackunit/text-ui)
(provide stream-to-list)

; Искаме да превърнем даден (краен) поток в списък

(define tests
  (test-suite "stream to list tests"

    (test-case "" (check-equal? (stream-to-list
				  (stream-cons 1 (stream-cons 2 (stream-cons 3 empty-stream))))
				'(1 2 3)))
  )
)

(run-tests tests 'verbose)


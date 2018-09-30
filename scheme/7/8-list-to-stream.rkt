#lang racket
(require "02stream-to-list.rkt")
(require rackunit)
(require rackunit/text-ui)
(provide list-to-stream)

; Искаме да превърнем списък в поток

(define tests
  (test-suite "list to stream tests"

    (test-case "" (check-equal? (stream-to-list (list-to-stream '(1 2 3))) '(1 2 3)))
  )
)

(run-tests tests 'verbose)


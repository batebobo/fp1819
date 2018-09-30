#lang racket
(require rackunit)
(require rackunit/text-ui)
(provide stream-take)

; Искаме да вземем първите n елемента от поток

(define tests
  (test-suite "Stream take tests"

    (test-case "" (check-equal? (stream->list (stream-take (n-stream 4) 5)) '(4 5 6 7 8)))
  )
)

(run-tests tests 'verbose)


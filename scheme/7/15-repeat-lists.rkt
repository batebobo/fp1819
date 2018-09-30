#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да създадем поток, като повтаряме няколко списъка

(define tests
  (test-suite "repeat lists tests"

    (test-case "" (check-equal? (stream->list (stream-take (repeat-lists '(1 2) '(3 4)) 7))
				'(1 2 3 4 1 2 3)))
  )
)

(run-tests tests 'verbose)


#lang racket
(require rackunit)
(require rackunit/text-ui)

; искаме да съберем два числови потока в един
; резултатът ще е дълъг колкото по-късия от двата потока.

(define tests
  (test-suite "add-streams tests"

    (test-case "" (check-equal? (stream->list (add-streams
						(list-to-stream '(1 2 3 7))
						(list-to-stream '(5 7 1))))
				'(6 9 4)))
  )
)

(run-tests tests 'verbose)


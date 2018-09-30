(load "graph.scm")
#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да проверим дали граф е симетричен

(define g1 (create-graph '(1 2 3 4)))
(add-edge! 1 2 g1)
(add-edge! 1 3 g1)
(add-edge! 3 1 g1)
(add-edge! 2 1 g1)

(define tests
  (test-suite "Symmetric tests"

    (test-case "Symmetric" (check-true (symmetric? g1)))
    (add-edge! 3 4 g1)
    (test-case "Not symmetric" (check-false (symmetric? g1)))
    (add-edge! 4 3 g1)
    (test-case "Symmetric again!" (check-true (symmetric? g1)))
  )
)

(run-tests tests 'verbose)


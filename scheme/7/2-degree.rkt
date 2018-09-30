(load "graph.scm")
#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да намерим полу-степен на вход и на изход.

; Искаме да намерим степен на връх.


(define g1 (create-graph '(1 2 3)))
(add-edge! 1 2 g1)
(add-edge! 1 3 g1)
(add-edge! 2 3 g1)
(add-edge! 2 1 g1)
(add-edge! 3 1 g1)

(define tests
  (test-suite "Degree tests"

    (test-case "out 1" (check-equal (degree-out 1 g1) 2))
    (test-case "out 2" (check-equal (degree-out 2 g1) 2))
    (test-case "out 3" (check-equal (degree-out 3 g1) 1))
    (test-case "in 1" (check-equal (degree-in 1 g1) 2))
    (test-case "in 2" (check-equal (degree-in 2 g1) 1))
    (test-case "in 3" (check-equal (degree-in 3 g1) 2))
    (test-case "degree 1" (check-equal (degree 1 g1) 4))
    (test-case "degree 2" (check-equal (degree 2 g1) 3))
    (test-case "degree 3" (check-equal (degree 3 g1) 3))
  )
)

(run-tests tests 'verbose)


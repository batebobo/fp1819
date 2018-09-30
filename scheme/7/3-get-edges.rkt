(load "graph.scm")
#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да върнем списък от всички ребра в граф




(define g1 (create-graph '(5 7)))
(add-vertex! 1 g1)
(add-vertex! 2 g1)
(add-vertex! 4 g1)
(add-vertex! 7 g1)
(add-edge! 1 2 g1)
(add-edge! 1 4 g1)
(add-edge! 5 2 g1)

(define tests
  (test-suite "Edges tests"

    (test-case "edges 1" (check-equal? (edges g1) '((5 2) (1 4) (1 2))))
  )
)

(run-tests tests 'verbose)


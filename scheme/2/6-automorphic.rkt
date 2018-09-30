#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да проверим дали дадено число е автоморфно.
; Едно число е автоморфно, ако квадратът му завършва на него.

(define tests (test-suite
  "Automorphic tests"

  (test-case "" (check-true (automorphic? 1)))
  (test-case "" (check-false (automorphic? 2)))
  (test-case "" (check-false (automorphic? 3)))
  (test-case "" (check-false (automorphic? 4)))
  (test-case "" (check-true (automorphic? 5)))
  (test-case "" (check-true (automorphic? 6)))
  (test-case "" (check-false (automorphic? 7)))
  (test-case "" (check-false (automorphic? 8)))
  (test-case "" (check-false (automorphic? 9)))
  (test-case "" (check-false (automorphic? 10)))
  (test-case "" (check-true (automorphic? 25)))
  (test-case "" (check-true (automorphic? 76)))
  (test-case "" (check-true (automorphic? 376)))
  (test-case "" (check-true (automorphic? 625)))
  (test-case "" (check-true (automorphic? 9376)))
))

(run-tests tests 'verbose)

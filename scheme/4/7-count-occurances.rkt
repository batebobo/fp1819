#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да преброим колко пъти се среща даден елемент в даден списък

; След това искаме да преброим колко пъти се срещат всички елементи от списъка l2 (подредени
; по същия начин) в списъка l1


(define occurences-el-tests
  (test-suite "element occurences tests"

    (test-case "Count occurences of element 1"
	       (check-equal? (count-occurences-el '(1 2 3 4 1 5 1 2 7) 2) 2))
    (test-case "Count occurences of element 7"
	       (check-equal? (count-occurences-el '(1 2 3 4 1 5 1 2 7) 7) 1))
    (test-case "Count occurences of element 1"
	       (check-equal? (count-occurences-el '(1 2 3 4 1 5 1 2 7) 1) 3))
  )
)

(define occurences-tests
  (test-suite "Occurences tests"

    (test-case "Count occurences of (1 2) in l1"
	       (check-equal? (count-occurences '(1 2 3 4 1 5 1 2 7) '(1 2)) 2))
    (test-case "Count occurences of (1 2 3) in l2"
	       (check-equal? (count-occurences '(1 2 3 4 1 5 1 2 7) '(1 2 3)) 1))
    (test-case "Count occurences of (1 3) in l2"
	       (check-equal? (count-occurences '(1 2 3 4 1 5 1 2 7) '(1 3)) 0))
  )
)

(run-tests occurences-el-tests 'verbose)
(run-tests occurences-tests 'verbose)



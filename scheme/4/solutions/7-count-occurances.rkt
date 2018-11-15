#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да преброим колко пъти се среща даден елемент в даден списък

(define (count-occurences-el lst el)
  (cond
    ((null? lst) 0)
    ((= (car lst) el) (+ 1 (count-occurences-el (cdr lst) el)))
    (else (count-occurences-el (cdr lst) el))))


; След това искаме да преброим колко пъти се срещат всички елементи от списъка l2 (подредени
; по същия начин) в списъка l1
(define (count-occurences l1 l2)
  (define (l1-starts-with-l2? current-l1 current-l2)
    (cond
      ((null? current-l2) #t)
      ((null? current-l1) #f)
      ((not (= (car current-l1) (car current-l2))) #f)
      (else (l1-starts-with-l2? (cdr current-l1) (cdr current-l2)))))
  (cond
    ((null? l1) 0)
    ((l1-starts-with-l2? l1 l2) (+ 1 (count-occurences (cdr l1) l2)))
    (else (count-occurences (cdr l1) l2))))


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



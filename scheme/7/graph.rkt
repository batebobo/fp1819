; Добавя (k v) в асоциативния списък a, ползвайки set-cdr!.
(define (insert! k v a)
  (let ((existing (assoc k a)))
    (if existing
      (set-cdr! existing
        (cons v (cdr existing)))
      (set-cdr! a
        (cons (list k v) (cdr a))))))

; Създава граф по списък от върхове. Налага се да вземаме списъка от върхове
; тъй като не можем да създадем истински празен граф - ако той е празен списък,
; деструктивните операции няма да могат да го „напълнят“ със съдържание, тъй
; като insert! (респективно set-cdr!) няма как да добавя в празен списък.
(define (create-graph vertices)
  (map (lambda (v) (list v))
       vertices))

(define (add-edge! a b g)
  (let ((start-vertex (assoc a g)))
    (set-cdr! start-vertex
              (cons b (cdr start-vertex)))))

(define (add-vertex! v g)
  (set-cdr! g
            (cons (list v) (cdr g))))

(define (vertices g) (map car g))

(define (neighbours v g) (cdr (assoc v g)))

(define g1 (create-graph '(5 7)))
(add-vertex! 1 g1)
(add-vertex! 2 g1)
(add-vertex! 4 g1)

(assert-equal '((5) (4) (2) (1) (7)) g1)
(assert-equal '(5 4 2 1 7) (vertices g1))
(assert-equal '() (neighbours 2 g1))

(add-edge! 1 2 g1)
(add-edge! 1 4 g1)
(add-edge! 5 2 g1)
(assert-equal '((5 2) (4) (2) (1 4 2) (7)) g1)

(define g2 '((4 1 2) (5 1 2 3)))
(assert-equal '(1 2 3) (neighbours 5 g2))
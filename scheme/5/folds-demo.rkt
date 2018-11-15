#lang racket
(require racket/trace)

(define (fold-left f null-value xs)
  (if (null? xs)
      null-value
      (fold-left f (f null-value (car xs)) (cdr xs))))

(define (fold-right-iter f null-value xs)
  (if (null? xs)
      null-value
      (fold-right f (f (car xs) null-value) (cdr xs))))

(define (fold-right f null-value xs)
  (if (null? xs)
      null-value
      (f (car xs) (fold-right f null-value (cdr xs)))))

(define (fold-left-rec f null-value xs)
  (if (null? xs)
      null-value
      (f (fold-left-rec f null-value (cdr xs)) (car xs))))

; медитираме над
(fold-left list '() '(1 2 3))
(fold-right list '() '(1 2 3))

(define (length xs)
  (fold-left (lambda (acc current) (+ 1 acc)) 0 xs))

(define (any? p? xs)
  (cond ((null? xs) #f)
        ((p? (car xs)) #t)
        (else (any? p? (cdr xs)))))

(define (all? p? xs)
  (cond ((null? xs) #t)
        ((p? (car xs)) (all? p? (cdr xs)))
        (else #f)))

(define (all2? p? xs)
  (not (any? (lambda (x) (not (p? x))) xs)))

(define (any2? p? xs)
  (not (all? (lambda (x) (not (p? xs))) xs)))

(define (member? x xs)
  (any? (lambda (y) (eq? x y)) xs))

(define (member2? x xs)
  (not (null? (filter (lambda (y) (eq? y x)) xs))))

(define (append xs ys)
  (fold-right cons ys xs))

(define (reverse xs)
  (fold-right (lambda (current acc) (append acc (list current))) '() xs))

(define (reverse2 xs)
  (fold-left (lambda (acc current) (cons current acc)) '() xs))

(define (flip f)
  (lambda (a b)
    (f b a)))

(define (reverse3 xs)
  (fold-left (flip cons) '() xs))

(define (count-occurences x xs)
  (length (filter (lambda (y) (eq? x y)) xs)))

(define (take n xs)
  (fold-left (lambda (acc current) (if (< (length acc) n) (append acc (list current)) acc)) '() xs))

(define (drop n xs)
  (fold-left (lambda (acc current) (if (= (+ n (length acc)) (length xs)) acc (cdr acc))) xs xs))

(define (flatten xs)
  (fold-right (lambda (current acc) (if (list? current) (append (flatten current) acc) (cons current acc))) '() xs))

(define (unique xs)
  (fold-right (lambda (current acc) (cons current (filter (lambda (x) (not (eq? x current))) acc))) xs xs))

(define (intersection xs ys)
  (fold-right (lambda (current acc) (if (member? current ys) (cons current acc) acc)) '() xs))

(define (union xs ys)
  (unique (append xs ys)))

(define (slice xs start end)
  (take (+ (- end start) 1) (drop start xs)))



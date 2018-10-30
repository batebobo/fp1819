#lang racket
(require rackunit)
(require rackunit/text-ui)
(provide accumulate)

; Искаме да напишем процедурата accumulate
(define (id x) x)
(define (inc x) (+ x 1))

(define (sum-iter start end)
  (define (helper current result)
    (if (> current end)
        result
        (helper (+ current 1)
                (+ result current))))
  (helper start 0))

; Абстрахираме изчисляването на членовете на сумата, добавяйки "term".
; (sum-iter 1 100) става (sum-iter 1 100 id)
(define (sum-term start end term)
  (define (helper current result)
    (if (> current end)
        result
        (helper (+ current 1)
                (+ result (term current)))))
  (helper start 0))

; Абстрахираме движението между "start" и "end", чрез процедура "next", която ни дава следващ
; индекс.
; (sum-iter 1 100) става (sum-iter-next 1 inc 100 id)
(define (sum-term-next start next end term)
  (define (helper current result)
    (if (> current end)
        result
        (helper (next current)
                (+ result (term current)))))
  (helper start 0))

; Абстрахираме комбинирането (напр. операцията събиране при сумирането по-горе). Трябва ни е
; първоначална стойност за комбинатора. Така получаваме accumulate.
; (sum-iter 1 100) става (accumulatet 1 inc 100 id + 0)
(define (accumulate comb initial start end term next)
  (define (helper current result)
    (if (> current end)
        result
        (helper (next current)
                (comb result (term current)))))
  (helper start initial))

(define (_square x) (* x x))

(define tests
  (test-suite "Accumulate tests"

    (check-equal? (accumulate + 0 1 100 id inc) 5050)
    (check-equal? (accumulate + 0 9 9 id inc) 9)
    (check-equal? (accumulate * 1 1 5 id inc) 120)
  )
)

(run-tests tests 'verbose)


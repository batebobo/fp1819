#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да обърнем число от десетична в двоична бройна система
(define (dec-to-bin n)
  (if (= n 0)
      0
      (+ (remainder n 2)
         (* 10 (dec-to-bin (quotient n 2))))))

(define (dec-to-bin2 n)
  (define (helper current i)
    (if (= 0 current)
        0
        (+ (* (remainder current 2) (expt 10 i))
           (helper (quotient current 2) (+ i 1)))))
  (helper n 0))

(define tests (test-suite
  "decimal to binary tests"

  (test-case "zero" (check-equal? (dec-to-bin 0) 0))
  (test-case "zero" (check-equal? (dec-to-bin2 0) 0))
  (test-case "one" (check-equal? (dec-to-bin 1) 1))
  (test-case "one" (check-equal? (dec-to-bin2 1) 1))
  (test-case "rip" (check-equal? (dec-to-bin 5296) 1010010110000))
  (test-case "rip" (check-equal? (dec-to-bin2 5296) 1010010110000))
  (test-case "power of 2" (check-equal? (dec-to-bin 16) 10000))
  (test-case "power of 2" (check-equal? (dec-to-bin2 16) 10000))
))

(run-tests tests 'verbose)


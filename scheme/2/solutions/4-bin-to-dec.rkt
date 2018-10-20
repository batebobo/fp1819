#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да обърнем число от двоична в десетична бройна система
(define (bin-to-dec n)
  (if (= n 0)
      0
      (+ (remainder n 10)
         (* 2 (bin-to-dec (quotient n 10))))))

(define (bin-to-dec2 n)
  (define (helper current i)
    (if (= 0 current)
        0
        (+ (* (remainder current 10) (expt 2 i))
           (helper (quotient current 10) (+ i 1)))))
  (helper n 0))

(define tests (test-suite "binary to decimal tests"

    (test-case "zero" (check-equal? (bin-to-dec 0) 0))
    (test-case "zero" (check-equal? (bin-to-dec2 0) 0))
    (test-case "one" (check-equal? (bin-to-dec 1) 1))
    (test-case "one" (check-equal? (bin-to-dec2 1) 1))
    (test-case "rip" (check-equal? (bin-to-dec 1010010110000) 5296))
    (test-case "rip" (check-equal? (bin-to-dec2 1010010110000) 5296))
    (test-case "power of 2" (check-equal? (bin-to-dec 10000) 16))
    (test-case "power of 2" (check-equal? (bin-to-dec2 10000) 16))
  )
)

(run-tests tests 'verbose)


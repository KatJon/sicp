#lang racket
(provide (all-defined-out))
; Exercise 1.1
; ---
; 10
; > 10
; (+ 5 3 4)
; > 12
; (- 9 1)
; > 8
; (/ 6 2)
; > 3
; (+ (* 2 4) (- 4 6))
; > 6
; (define a 3)
;
; (define b (+ a 1))
;
; (+ a b (* a b))
; > 19
; (= a b)
; > #f
; (if (and (> b a) (< b (* a b)))
;   b a)
; > 4
; (cond 
;   ((= a 4) 6)
;   ((= b 4) (+ 6 7 a))
;   (else 25))
; > 16
; (+ 2 (if (> b a) b a))
; > 6
; (* (cond 
;     ((> a b) a) 
;     ((< a b) b)
;     (else -1)) 
;   (+ a 1))
; > 16

; Exercise 1.2
; ---
(define nominator
  (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))))

(define denominator
  (* 3 (- 6 2) (- 2 7)))

(/ nominator denominator)

; Exercise 1.3
; ---
(define (square x)
  (* x x)
)
(define (sum-square x y)
  (+ (square x) (square y))
)

(define (sq-max-3 x y z)
  (cond
    ((and (< x y) (< x z)) (sum-square y z))
    ((and (< y x) (< y z)) (sum-square x z))
    (else (sum-square x y))
  )
)

; Exercise 1.4
; ---
(define (a-plus-abs-b a b) ((if (> b 0) + -) a b))
;
; If b > 0 => (+ a b)
; Else => (- a b)

; Exercise 1.5
; ---
; (define (p) (p))
; (define (test x y)
;   (if (= x 0) 0 y))
;
; (test 0 (p))

; If the interpreter uses normal-order, then the evaluation proceeds like:
; (test 0 (p)) => (if (= 0 0) 0 (p)) => (if #t 0 (p)) => 0

; If the interpreter uses applicative-order:
; (test 0 (p)) => (test 0 (p)) => ...



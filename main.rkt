#lang racket

; (down lst): List(N) -> List(List)
; wraps parentheses around each top-level element of lst
; : size(lst)=0 -> ()
; : else        -> ((lst[0]) (down lst[1..end]))
(define down
  (lambda (lst)
    (if (null? lst)
        (list)
        (cons (list (car lst)) (down (cdr lst))))))

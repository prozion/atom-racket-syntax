#lang racket

(require "lib/svg.rkt")

; (rect #:x 10 #:y 10 #:width 100 #:height 150 #:fill "red")

(module+ test
  (require rackunit)
  (check-equal?
    (rect #:x 10
          #:y 10
          #:width 100
          #:height 150
          #:fill "red")
    "<rect x='10' y='10' width='100' height='150' fill='red' />\n")
    xyz
    (check-equal?
      (rect #:width 100
            #:x 10
            #:y 10
            #:height 150)
      "<rect x='10' y='10' \a width='100' height='150' fill='black' />\n")
)

(define (my-function a) (sqrt (* a 7)))
(define-syntax (a b) (+ 3 7))

(cond
  ((< 2 3) (cons #t null))
  ((bigger? x) (my/function x))
  (else (abs -3)))

; (svg)

; (svg
  ;(g
    ;(rect #:x 10 #:y 10 #:width 100 #:height 150 #:fill "red")
    ;(rect #:x 10 #:y 10 #:width 100 #:height 150 #:fill "red")))

(module+ test

  (check-equal?
    (svg)
    #<<svg
    <rect x='10' y='10' \a width='100' height='150' fill='black'
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"></svg>
    svg
  )

  (check-equal?
    (svg
      (g
        (rect #:x 10 #:y 10 #:width 100 #:height 150 #:fill "red")
        (rect #:x 10 #:y 10 #:width 100 #:height 150 #:fill "red")))
    #<<svg
    <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"></svg>
    svg)
)

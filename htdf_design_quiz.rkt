;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-advanced-reader.ss" "lang")((modname htdf_design_quiz) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #t #t none #f ())))
(require 2htdp/image)
;; Image Image -> Boolean
;; Given two images returns true if first is larger than the second

(check-expect (larger (square 50 "solid" "slateblue") (square 40 "solid" "slateblue")) true)
(check-expect (larger (square 30 "solid" "slateblue") (square 40 "solid" "slateblue")) false)
(check-expect (larger (square 40 "solid" "slateblue") (square 40 "solid" "slateblue")) false)

;(define(larger imga imgb) true) ;stub

;(define(larger imga imgb) ;template
;  (...imga ...imgb))

(define(larger imga imgb)
  (> (* (image-width imga) (image-height imga)) (* (image-width imgb) (image-height imgb))))
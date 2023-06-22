(defpackage :triangle
  (:use :cl)
  (:export :triangle-type-p))

(in-package :triangle)

(defun is-valid-triangle (a b c)
  "Determines if three sides represent a valid triangle"
  (and
   (> a 0)
   (> b 0)
   (> c 0)
   (>= (+ a b) c)
   (>= (+ b c) a)
   (>= (+ a c) b)))

(defun triangle-type-p (type a b c)
  "Deterimines if a triangle (given by side lengths A, B, C) is of the given TYPE"
  (case type
    (:equilateral (and (is-valid-triangle a b c) (= a b) (= b c)))
    (:isosceles (and (is-valid-triangle a b c) (or (= a b) (= a c) (= b c))))
    (:scalene (and (is-valid-triangle a b c) (not (or (= a b) (= a c) (= b c)))))
    (otherwise NIL)))

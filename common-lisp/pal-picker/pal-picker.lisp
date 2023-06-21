(defpackage :pal-picker
  (:use :cl)
  (:export :pal-picker :habitat-fitter :feeding-time-p
           :pet :play-fetch))

(in-package :pal-picker)

(defun pal-picker (personality)
  (case personality
    (:lazy "Cat")
    (:energetic "Dog")
    (:quiet "Fish")
    (:hungry "Rabbit")
    (:talkative "Bird")
    (otherwise "I don't know... A dragon?")))

(defun between-and (value min max)
  (and (>= value min) (<= value max)))

(defun habitat-fitter (weight)
  (cond
    ((<= weight 0) :just-your-imagination)
    ((between-and weight 1 9) :small)
    ((between-and weight 10 19) :medium)
    ((between-and weight 20 39) :large)
    ((>= weight 40) :massive)))

(defun feeding-time-p (fullness)
  (cond
    ((> fullness 20) "All is well.")
    ((<= fullness 20) "It's feeding time!")))

(defun pet (pet)
  (cond
    ((string= pet "Fish") t)
    (t NIL)))

(defun play-fetch (pet)
  (cond
    ((string= pet "Dog") NIL)
    (t t)))

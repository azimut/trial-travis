;;;; trial-travis.lisp

(in-package #:trial-travis)

(defclass cars (main) ()
  (:default-initargs :clear-color (vec 0.25 0.3 0.35 0)))

(define-pool cars
  :base :trial-travis)

(define-shader-subject grid (vertex-entity)
  ((vertex-array :initform (asset 'cars 'grid))))

(define-asset (cars grid) mesh
    (make-line-grid 10 150 150))

(progn
  (defmethod setup-scene ((workbench cars) scene)
    (disable :cull-face)
    (enter (make-instance 'grid)          scene)
    (enter (make-instance 'editor-camera) scene)
    (enter (make-instance 'render-pass)   scene))
  
  (maybe-reload-scene))

(defun toplevel ()
  (trial:launch 'cars))

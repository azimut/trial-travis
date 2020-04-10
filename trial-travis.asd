;;;; trial-travis.asd

(asdf:defsystem #:trial-travis
  :description "Describe trial-travis here"
  :author "azimut <azimut.github@protonmail.com>"
  :license  "MIT"
  :version "0.0.1"
  :serial t
  :defsystem-depends-on (:deploy)
  :build-operation "deploy-op"
  :build-pathname "vydia"
  :entry-point "trial-travis::toplevel"
  :depends-on (#:trial-glfw)
  :components ((:file "package")
               (:file "trial-travis")))

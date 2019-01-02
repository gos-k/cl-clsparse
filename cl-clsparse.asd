#|
  This file is a part of cl-clsparse project.
  Copyright (c) 2018-2019 gos-k (mag4.elan@gmail.com)
|#

#-asdf3.1 (error "MY-LIB requires ASDF 3.1 or later.")
(defsystem :cl-clsparse
  :name "cl-clsparse"
  :version "0.1"
  :author "gos-k"
  :license "Apache License, Version 2.0"
  :description "Common Lisp bindings for clSPARSE"

  :class :package-inferred-system
  :depends-on ("cffi"
               "cffi-libffi"
               "cl-clsparse/src/load"
               "cl-clsparse/src/all")
  :in-order-to ((test-op (test-op "cl-clsparse/tests"))))

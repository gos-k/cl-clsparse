#|
  This file is a part of cl-clsparse project.
  Copyright (c) 2018 gos-k (mag4.elan@gmail.com)
|#

(defsystem "cl-clsparse"
  :class :package-inferred-system
  :version "0.1"
  :author "gos-k"
  :license "Apache License, Version 2.0"
  :description "Common Lisp bindings for clSPARSE"
  :depends-on ("cffi"
               "cl-clsparse/cl-clsparse")
  :in-order-to ((test-op (test-op "cl-clsparse/tests"))))

#|
  This file is a part of cl-clsparse project.
  Copyright (c) 2018 gos-k (mag4.elan@gmail.com)
|#

#|
  Author: gos-k (mag4.elan@gmail.com)
|#

(defsystem "cl-clsparse"
  :version "0.1"
  :author "gos-k"
  :license "Apache License, Version 2.0"
  :depends-on ("cffi")
  :components ((:module "src"
                :components
                ((:file "cl-clsparse")
                 (:file "clsparse-cffi"))))
  :description "Common Lisp bindings for clSPARSE"
  ;; :long-description #.(read-file-string (subpathname *load-pathname* #p"README.markdown"))
  :in-order-to ((test-op (test-op "cl-clsparse-test"))))

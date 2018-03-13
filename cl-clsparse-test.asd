#|
  This file is a part of cl-clsparse project.
  Copyright (c) 2018 gos-k (mag4.elan@gmail.com)
|#

(defsystem "cl-clsparse-test"
  :author "gos-k"
  :license "Apache License, Version 2.0"
  :depends-on ("cl-clsparse"
               "prove"
               "cffi"
               "cl-oclapi")
  :components ((:module "t"
                :components
                ((:test-file "cl-clsparse"))))
  :description "Test system for cl-clsparse"

  :defsystem-depends-on ("prove-asdf")
  :perform (test-op (op c) (symbol-call :prove-asdf :run-test-system c)))

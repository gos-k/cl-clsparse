#|
  This file is a part of cl-clsparse project.
  Copyright (c) 2018 gos-k (mag4.elan@gmail.com)
|#

(defpackage #:cl-clsparse/tests/cl-clsparse
  (:use #:cl
        #:rove
        #:cl-clsparse
        #:cl-oclapi))
(in-package #:cl-clsparse/tests/cl-clsparse)

(deftest clsparse-setup-teardown-test
  (ok (eq (clsparse-setup) :+clsparse-success+))
  (ok (eq (clsparse-teardown) :+clsparse-success+)))

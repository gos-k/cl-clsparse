#|
  This file is a part of cl-clsparse project.
  Copyright (c) 2018 gos-k (mag4.elan@gmail.com)
|#

(in-package #:cl-user)
(defpackage #:cl-clsparse-test
  (:use #:cl
        #:cl-clsparse
        #:prove
        #:cffi
        #:cl-oclapi))
(in-package #:cl-clsparse-test)

;; NOTE: To run this test file, execute `(asdf:test-system :cl-clsparse)' in your Lisp.

(plan nil)

(subtest "clsparse-setup"
  (is :+clsparse-success+ (clsparse-setup) "clsparse-setup"))

(finalize)

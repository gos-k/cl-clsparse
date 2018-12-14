#|
  This file is a part of cl-clsparse project.
  Copyright (c) 2018 gos-k (mag4.elan@gmail.com)
|#

(defpackage #:cl-clsparse/tests
  (:use #:cl)
  (:import-from #:cl-clsparse/tests/cl-clsparse)
  (:import-from #:rove))
(in-package #:cl-clsparse/tests)

(defmethod asdf:perform :after ((op asdf:test-op)
                                (system (eql (asdf:find-system :cl-clsparse/tests))))
  (rove:run (asdf:find-system system)))
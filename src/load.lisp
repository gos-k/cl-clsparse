#|
  This file is a part of cl-clsparse project.
  Copyright (c) 2018 gos-k (mag4.elan@gmail.com)
|#

(defpackage #:cl-clsparse/src/load
  (:use #:cl
        #:cffi))
(in-package #:cl-clsparse/src/load)

(eval-when (:load-toplevel)
  (define-foreign-library libclsparse
    (:unix (:or "libclSPARSE.so" "libclSPARSE.so.1"))
    (t (:default "libclSPARSE")))

  (unless (foreign-library-loaded-p 'libclsparse)
    (use-foreign-library libclsparse)))

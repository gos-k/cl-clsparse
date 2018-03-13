#|
  This file is a part of cl-clsparse project.
  Copyright (c) 2018 gos-k (mag4.elan@gmail.com)
|#

(in-package #:cl-user)
(defpackage #:cl-clsparse
  (:use #:cl
        #:cffi))
(in-package #:cl-clsparse)

(eval-when (:load-toplevel)
  (define-foreign-library libclsparse
    (t (:default "libclSPARSE")))

  (unless (foreign-library-loaded-p 'libclsparse)
    (use-foreign-library libclsparse)))

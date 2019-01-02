#|
  This file is a part of cl-clsparse project.
  Copyright (c) 2018 gos-k (mag4.elan@gmail.com)
|#

(defpackage #:cl-clsparse/tests/cl-clsparse
  (:use #:cl
        #:cffi
        #:rove
        #:cl-clsparse
        #:cl-oclapi))
(in-package #:cl-clsparse/tests/cl-clsparse)

(deftest setup-teardown-test
  (ok (eq (clsparse-setup) :+clsparse-success+))
  (ok (eq (clsparse-teardown) :+clsparse-success+)))

#| see: https://github.com/clMathLibraries/clSPARSE/blob/master/samples/sample-axpy.cpp |#
(deftest axpy-test

  #| Step 1. Setup OpenCL environment |#
  (with-platform-id (platform)
    (with-device-ids (devices num-devices platform)
      (let ((device (mem-aref devices 'cl-device-id)))
        (with-context (context (null-pointer) 1 devices)
          (with-command-queue (command-queue context device 0)

            #| Step 2. Setup GPU buffers |#
            (let ((float-size (foreign-type-size 'cl-float))
                  (n 1024))
              (with-foreign-objects ((alpha 'cl-float)
                                     (x 'cl-float n)
                                     (y 'cl-float n)
                                     (gpu-alpha 'clsparse-scalar)
                                     (gpu-x 'cldense-vector)
                                     (gpu-y 'cldense-vector))
                (setf (mem-aref alpha :float) 2.0)
                (dotimes (i n)
                  (setf (mem-aref x :float i) 1.0)
                  (setf (mem-aref y :float i) 1.0))
                (clsparse-init-scalar gpu-alpha)
                (clsparse-init-vector gpu-x)
                (clsparse-init-vector gpu-y)
                (with-buffers ((d-alpha context +cl-mem-read-only+ float-size)
                               (d-x context +cl-mem-write-only+ (* float-size n))
                               (d-y context +cl-mem-read-only+ (* float-size n)))
                  (labels ((write-buffer (device size host)
                             (enqueue-write-buffer command-queue
                                                   device
                                                   +cl-true+
                                                   0
                                                   size
                                                   host)))
                    (write-buffer d-alpha float-size alpha)
                    (write-buffer d-x (* float-size n) x)
                    (write-buffer d-y (* float-size n) y))
                  (setf (foreign-slot-value gpu-alpha 'clsparse-scalar 'value) d-alpha
                        (foreign-slot-value gpu-x 'cldense-vector 'values) d-x
                        (foreign-slot-value gpu-x 'cldense-vector 'num-values) n
                        (foreign-slot-value gpu-y 'cldense-vector 'values) d-y
                        (foreign-slot-value gpu-y 'cldense-vector 'num-values) n)

                  #| Step 3. Init clSPARSE library |#
                  (ok (eq (clsparse-setup) :+clsparse-success+))
                  (let ((create-result (clsparse-create-control command-queue)))
                    (ok (eq (getf create-result 'status) :+clsparse-success+))

                    #| Step 4. Execute AXPY algorithm |#
                    (ok (eq (cldense-saxpy gpu-y gpu-alpha gpu-x gpu-y (getf create-result 'control))
                            :+clsparse-success+))

                    #| Step 5. Shutdown clSPARSE library & OpenCL |#
                    (ok (eq (clsparse-release-control (getf create-result 'control)) :+clsparse-success+))
                    (ok (eq (clsparse-teardown) :+clsparse-success+))
                    (enqueue-read-buffer command-queue
                                         d-y
                                         +cl-true+
                                         0
                                         (* n float-size)
                                         y)
                    (ok (= (mem-aref y :float 0) 3.0))))))))))))

;;; This file was automatically generated by SWIG (http://www.swig.org).
;;; Version 3.0.12
;;;
;;; Do not make changes to this file unless you know what you are doing--modify
;;; the SWIG interface file instead.

#|
  This file is a part of cl-clsparse project.
  Copyright (c) 2018-2019 gos-k (mag4.elan@gmail.com)
|#

(defpackage #:cl-clsparse/src/clsparse-cffi
  (:use #:cl))
(in-package #:cl-clsparse/src/clsparse-cffi)

;;;SWIG wrapper code starts here

(cl:defmacro defanonenum (cl:&body enums)
   "Converts anonymous enums to defconstants."
  `(cl:progn ,@(cl:loop for value in enums
                        for index = 0 then (cl:1+ index)
                        when (cl:listp value) do (cl:setf index (cl:second value)
                                                          value (cl:first value))
                        collect `(cl:defconstant ,value ,index))))

(cl:eval-when (:compile-toplevel :load-toplevel)
  (cl:unless (cl:fboundp 'swig-lispify)
    (cl:defun swig-lispify (name flag cl:&optional (package cl:*package*))
      (cl:labels ((helper (lst last rest cl:&aux (c (cl:car lst)))
                    (cl:cond
                      ((cl:null lst)
                       rest)
                      ((cl:upper-case-p c)
                       (helper (cl:cdr lst) 'upper
                               (cl:case last
                                 ((lower digit) (cl:list* c #\- rest))
                                 (cl:t (cl:cons c rest)))))
                      ((cl:lower-case-p c)
                       (helper (cl:cdr lst) 'lower (cl:cons (cl:char-upcase c) rest)))
                      ((cl:digit-char-p c)
                       (helper (cl:cdr lst) 'digit 
                               (cl:case last
                                 ((upper lower) (cl:list* c #\- rest))
                                 (cl:t (cl:cons c rest)))))
                      ((cl:char-equal c #\_)
                       (helper (cl:cdr lst) '_ (cl:cons #\- rest)))
                      (cl:t
                       (cl:error "Invalid character: ~A" c)))))
        (cl:let ((fix (cl:case flag
                        ((constant enumvalue) "+")
                        (variable "*")
                        (cl:t ""))))
          (cl:intern
           (cl:concatenate
            'cl:string
            fix
            (cl:nreverse (helper (cl:concatenate 'cl:list name) cl:nil cl:nil))
            fix)
           package))))))

;;;SWIG wrapper code ends here


(cffi:defcenum #.(swig-lispify "cldenseMajor" 'enumname)
	(#.(swig-lispify "rowMajor" 'enumvalue :keyword) #.1)
	#.(swig-lispify "columnMajor" 'enumvalue :keyword))

(cl:export '#.(swig-lispify "cldenseMajor" 'enumname))

(cffi:defcstruct #.(swig-lispify "clsparseScalar" 'classname)
	(#.(swig-lispify "value" 'slotname) :pointer)
	(#.(swig-lispify "off_value" 'slotname) :unsigned-int))

(cl:export '#.(swig-lispify "clsparseScalar" 'classname))

(cl:export '#.(swig-lispify "value" 'slotname))

(cl:export '#.(swig-lispify "off_value" 'slotname))

(cffi:defcstruct #.(swig-lispify "cldenseVector" 'classname)
	(#.(swig-lispify "num_values" 'slotname) :unsigned-int)
	(#.(swig-lispify "values" 'slotname) :pointer)
	(#.(swig-lispify "off_values" 'slotname) :unsigned-int))

(cl:export '#.(swig-lispify "cldenseVector" 'classname))

(cl:export '#.(swig-lispify "num_values" 'slotname))

(cl:export '#.(swig-lispify "values" 'slotname))

(cl:export '#.(swig-lispify "off_values" 'slotname))

(cffi:defcstruct #.(swig-lispify "clsparseCsrMatrix" 'classname)
	(#.(swig-lispify "num_rows" 'slotname) :unsigned-int)
	(#.(swig-lispify "num_cols" 'slotname) :unsigned-int)
	(#.(swig-lispify "num_nonzeros" 'slotname) :unsigned-int)
	(#.(swig-lispify "values" 'slotname) :pointer)
	(#.(swig-lispify "col_indices" 'slotname) :pointer)
	(#.(swig-lispify "row_pointer" 'slotname) :pointer)
	(#.(swig-lispify "off_values" 'slotname) :unsigned-int)
	(#.(swig-lispify "off_col_indices" 'slotname) :unsigned-int)
	(#.(swig-lispify "off_row_pointer" 'slotname) :unsigned-int)
	(#.(swig-lispify "meta" 'slotname) :pointer))

(cl:export '#.(swig-lispify "clsparseCsrMatrix" 'classname))

(cl:export '#.(swig-lispify "num_rows" 'slotname))

(cl:export '#.(swig-lispify "num_cols" 'slotname))

(cl:export '#.(swig-lispify "num_nonzeros" 'slotname))

(cl:export '#.(swig-lispify "values" 'slotname))

(cl:export '#.(swig-lispify "col_indices" 'slotname))

(cl:export '#.(swig-lispify "row_pointer" 'slotname))

(cl:export '#.(swig-lispify "off_values" 'slotname))

(cl:export '#.(swig-lispify "off_col_indices" 'slotname))

(cl:export '#.(swig-lispify "off_row_pointer" 'slotname))

(cl:export '#.(swig-lispify "meta" 'slotname))

(cffi:defcstruct #.(swig-lispify "clsparseCooMatrix" 'classname)
	(#.(swig-lispify "num_rows" 'slotname) :unsigned-int)
	(#.(swig-lispify "num_cols" 'slotname) :unsigned-int)
	(#.(swig-lispify "num_nonzeros" 'slotname) :unsigned-int)
	(#.(swig-lispify "values" 'slotname) :pointer)
	(#.(swig-lispify "col_indices" 'slotname) :pointer)
	(#.(swig-lispify "row_indices" 'slotname) :pointer)
	(#.(swig-lispify "off_values" 'slotname) :unsigned-int)
	(#.(swig-lispify "off_col_indices" 'slotname) :unsigned-int)
	(#.(swig-lispify "off_row_indices" 'slotname) :unsigned-int))

(cl:export '#.(swig-lispify "clsparseCooMatrix" 'classname))

(cl:export '#.(swig-lispify "num_rows" 'slotname))

(cl:export '#.(swig-lispify "num_cols" 'slotname))

(cl:export '#.(swig-lispify "num_nonzeros" 'slotname))

(cl:export '#.(swig-lispify "values" 'slotname))

(cl:export '#.(swig-lispify "col_indices" 'slotname))

(cl:export '#.(swig-lispify "row_indices" 'slotname))

(cl:export '#.(swig-lispify "off_values" 'slotname))

(cl:export '#.(swig-lispify "off_col_indices" 'slotname))

(cl:export '#.(swig-lispify "off_row_indices" 'slotname))

(cffi:defcstruct #.(swig-lispify "cldenseMatrix" 'classname)
	(#.(swig-lispify "num_rows" 'slotname) :unsigned-int)
	(#.(swig-lispify "num_cols" 'slotname) :unsigned-int)
	(#.(swig-lispify "lead_dim" 'slotname) :unsigned-int)
	(#.(swig-lispify "major" 'slotname) #.(swig-lispify "cldenseMajor" 'enumname))
	(#.(swig-lispify "values" 'slotname) :pointer)
	(#.(swig-lispify "off_values" 'slotname) :unsigned-int))

(cl:export '#.(swig-lispify "cldenseMatrix" 'classname))

(cl:export '#.(swig-lispify "num_rows" 'slotname))

(cl:export '#.(swig-lispify "num_cols" 'slotname))

(cl:export '#.(swig-lispify "lead_dim" 'slotname))

(cl:export '#.(swig-lispify "major" 'slotname))

(cl:export '#.(swig-lispify "values" 'slotname))

(cl:export '#.(swig-lispify "off_values" 'slotname))

(cffi:defcenum #.(swig-lispify "clsparseStatus" 'enumname)
	(#.(swig-lispify "clsparseSuccess" 'enumvalue :keyword) #.0)
	(#.(swig-lispify "clsparseInvalidValue" 'enumvalue :keyword) #.-30)
	(#.(swig-lispify "clsparseInvalidCommandQueue" 'enumvalue :keyword) #.-36)
	(#.(swig-lispify "clsparseInvalidContext" 'enumvalue :keyword) #.-34)
	(#.(swig-lispify "clsparseInvalidMemObject" 'enumvalue :keyword) #.-38)
	(#.(swig-lispify "clsparseInvalidDevice" 'enumvalue :keyword) #.-33)
	(#.(swig-lispify "clsparseInvalidEventWaitList" 'enumvalue :keyword) #.-57)
	(#.(swig-lispify "clsparseInvalidEvent" 'enumvalue :keyword) #.-58)
	(#.(swig-lispify "clsparseOutOfResources" 'enumvalue :keyword) #.-5)
	(#.(swig-lispify "clsparseOutOfHostMemory" 'enumvalue :keyword) #.-6)
	(#.(swig-lispify "clsparseInvalidOperation" 'enumvalue :keyword) #.-59)
	(#.(swig-lispify "clsparseCompilerNotAvailable" 'enumvalue :keyword) #.-3)
	(#.(swig-lispify "clsparseBuildProgramFailure" 'enumvalue :keyword) #.-11)
	(#.(swig-lispify "clsparseInvalidKernelArgs" 'enumvalue :keyword) #.-52)
	(#.(swig-lispify "clsparseNotImplemented" 'enumvalue :keyword) #.-1024)
	#.(swig-lispify "clsparseNotInitialized" 'enumvalue :keyword)
	#.(swig-lispify "clsparseStructInvalid" 'enumvalue :keyword)
	#.(swig-lispify "clsparseInvalidSize" 'enumvalue :keyword)
	#.(swig-lispify "clsparseInvalidMemObj" 'enumvalue :keyword)
	#.(swig-lispify "clsparseInsufficientMemory" 'enumvalue :keyword)
	#.(swig-lispify "clsparseInvalidControlObject" 'enumvalue :keyword)
	#.(swig-lispify "clsparseInvalidFile" 'enumvalue :keyword)
	#.(swig-lispify "clsparseInvalidFileFormat" 'enumvalue :keyword)
	#.(swig-lispify "clsparseInvalidKernelExecution" 'enumvalue :keyword)
	#.(swig-lispify "clsparseInvalidType" 'enumvalue :keyword)
	(#.(swig-lispify "clsparseInvalidSolverControlObject" 'enumvalue :keyword) #.-2048)
	#.(swig-lispify "clsparseInvalidSystemSize" 'enumvalue :keyword)
	#.(swig-lispify "clsparseIterationsExceeded" 'enumvalue :keyword)
	#.(swig-lispify "clsparseToleranceNotReached" 'enumvalue :keyword)
	#.(swig-lispify "clsparseSolverError" 'enumvalue :keyword))

(cl:export '#.(swig-lispify "clsparseStatus" 'enumname))

(cffi:defcfun ("clsparseSetup" #.(swig-lispify "clsparseSetup" 'function)) #.(swig-lispify "clsparseStatus" 'enumname))

(cl:export '#.(swig-lispify "clsparseSetup" 'function))

(cffi:defcfun ("clsparseTeardown" #.(swig-lispify "clsparseTeardown" 'function)) #.(swig-lispify "clsparseStatus" 'enumname))

(cl:export '#.(swig-lispify "clsparseTeardown" 'function))

(cffi:defcfun ("clsparseGetVersion" #.(swig-lispify "clsparseGetVersion" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (major :pointer)
  (minor :pointer)
  (patch :pointer)
  (tweak :pointer))

(cl:export '#.(swig-lispify "clsparseGetVersion" 'function))

(cffi:defcfun ("clsparseInitScalar" #.(swig-lispify "clsparseInitScalar" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (scalar :pointer))

(cl:export '#.(swig-lispify "clsparseInitScalar" 'function))

(cffi:defcfun ("clsparseInitVector" #.(swig-lispify "clsparseInitVector" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (vec :pointer))

(cl:export '#.(swig-lispify "clsparseInitVector" 'function))

(cffi:defcfun ("clsparseInitCooMatrix" #.(swig-lispify "clsparseInitCooMatrix" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (cooMatx :pointer))

(cl:export '#.(swig-lispify "clsparseInitCooMatrix" 'function))

(cffi:defcfun ("clsparseInitCsrMatrix" #.(swig-lispify "clsparseInitCsrMatrix" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (csrMatx :pointer))

(cl:export '#.(swig-lispify "clsparseInitCsrMatrix" 'function))

(cffi:defcfun ("cldenseInitMatrix" #.(swig-lispify "cldenseInitMatrix" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (denseMatx :pointer))

(cl:export '#.(swig-lispify "cldenseInitMatrix" 'function))

(cffi:defcstruct #.(swig-lispify "clsparseCreateResult" 'classname)
	(#.(swig-lispify "status" 'slotname) #.(swig-lispify "clsparseStatus" 'enumname))
	(#.(swig-lispify "control" 'slotname) :pointer))

(cl:export '#.(swig-lispify "clsparseCreateResult" 'classname))

(cl:export '#.(swig-lispify "status" 'slotname))

(cl:export '#.(swig-lispify "control" 'slotname))

(cffi:defcfun ("clsparseCreateControl" #.(swig-lispify "clsparseCreateControl" 'function)) (:struct #.(swig-lispify "clsparseCreateResult" 'classname))
  (queue :pointer))

(cl:export '#.(swig-lispify "clsparseCreateControl" 'function))

(cffi:defcfun ("clsparseEnableAsync" #.(swig-lispify "clsparseEnableAsync" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (control :pointer)
  (async :unsigned-int))

(cl:export '#.(swig-lispify "clsparseEnableAsync" 'function))

(cffi:defcfun ("clsparseEnableExtendedPrecision" #.(swig-lispify "clsparseEnableExtendedPrecision" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (control :pointer)
  (extPrecision :unsigned-int))

(cl:export '#.(swig-lispify "clsparseEnableExtendedPrecision" 'function))

(cffi:defcstruct #.(swig-lispify "clsparseEventResult" 'classname)
	(#.(swig-lispify "status" 'slotname) #.(swig-lispify "clsparseStatus" 'enumname))
	(#.(swig-lispify "event" 'slotname) :pointer))

(cl:export '#.(swig-lispify "clsparseEventResult" 'classname))

(cl:export '#.(swig-lispify "status" 'slotname))

(cl:export '#.(swig-lispify "event" 'slotname))

(cffi:defcfun ("clsparseGetEvent" #.(swig-lispify "clsparseGetEvent" 'function)) (:struct #.(swig-lispify "clsparseEventResult" 'classname))
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseGetEvent" 'function))

(cffi:defcfun ("clsparseReleaseControl" #.(swig-lispify "clsparseReleaseControl" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseReleaseControl" 'function))

(cffi:defcenum #.(swig-lispify "PRINT_MODE" 'enumname)
	(#.(swig-lispify "QUIET" 'enumvalue :keyword) #.0)
	#.(swig-lispify "NORMAL" 'enumvalue :keyword)
	#.(swig-lispify "VERBOSE" 'enumvalue :keyword))

(cl:export '#.(swig-lispify "PRINT_MODE" 'enumname))

(cffi:defcenum #.(swig-lispify "PRECONDITIONER" 'enumname)
	(#.(swig-lispify "NOPRECOND" 'enumvalue :keyword) #.0)
	#.(swig-lispify "DIAGONAL" 'enumvalue :keyword))

(cl:export '#.(swig-lispify "PRECONDITIONER" 'enumname))

(cffi:defcstruct #.(swig-lispify "clsparseCreateSolverResult" 'classname)
	(#.(swig-lispify "status" 'slotname) #.(swig-lispify "clsparseStatus" 'enumname))
	(#.(swig-lispify "control" 'slotname) :pointer))

(cl:export '#.(swig-lispify "clsparseCreateSolverResult" 'classname))

(cl:export '#.(swig-lispify "status" 'slotname))

(cl:export '#.(swig-lispify "control" 'slotname))

(cffi:defcfun ("clsparseCreateSolverControl" #.(swig-lispify "clsparseCreateSolverControl" 'function)) (:struct #.(swig-lispify "clsparseCreateSolverResult" 'classname))
  (precond #.(swig-lispify "PRECONDITIONER" 'enumname))
  (maxIters :int)
  (relTol :double)
  (absTol :double))

(cl:export '#.(swig-lispify "clsparseCreateSolverControl" 'function))

(cffi:defcfun ("clsparseReleaseSolverControl" #.(swig-lispify "clsparseReleaseSolverControl" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (solverControl :pointer))

(cl:export '#.(swig-lispify "clsparseReleaseSolverControl" 'function))

(cffi:defcfun ("clsparseSetSolverParams" #.(swig-lispify "clsparseSetSolverParams" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (solverControl :pointer)
  (precond #.(swig-lispify "PRECONDITIONER" 'enumname))
  (maxIters :int)
  (relTol :double)
  (absTol :double))

(cl:export '#.(swig-lispify "clsparseSetSolverParams" 'function))

(cffi:defcfun ("clsparseSolverPrintMode" #.(swig-lispify "clsparseSolverPrintMode" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (solverControl :pointer)
  (mode #.(swig-lispify "PRINT_MODE" 'enumname)))

(cl:export '#.(swig-lispify "clsparseSolverPrintMode" 'function))

(cffi:defcfun ("clsparseScsrcg" #.(swig-lispify "clsparseScsrcg" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (x :pointer)
  (A :pointer)
  (b :pointer)
  (solverControl :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseScsrcg" 'function))

(cffi:defcfun ("clsparseDcsrcg" #.(swig-lispify "clsparseDcsrcg" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (x :pointer)
  (A :pointer)
  (b :pointer)
  (solverControl :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseDcsrcg" 'function))

(cffi:defcfun ("clsparseScsrbicgStab" #.(swig-lispify "clsparseScsrbicgStab" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (x :pointer)
  (A :pointer)
  (b :pointer)
  (solverControl :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseScsrbicgStab" 'function))

(cffi:defcfun ("clsparseDcsrbicgStab" #.(swig-lispify "clsparseDcsrbicgStab" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (x :pointer)
  (A :pointer)
  (b :pointer)
  (solverControl :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseDcsrbicgStab" 'function))

(cffi:defcfun ("clsparseHeaderfromFile" #.(swig-lispify "clsparseHeaderfromFile" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (nnz :pointer)
  (row :pointer)
  (col :pointer)
  (filePath :string))

(cl:export '#.(swig-lispify "clsparseHeaderfromFile" 'function))

(cffi:defcfun ("clsparseSCooMatrixfromFile" #.(swig-lispify "clsparseSCooMatrixfromFile" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (cooMatx :pointer)
  (filePath :string)
  (control :pointer)
  (read_explicit_zeroes :unsigned-int))

(cl:export '#.(swig-lispify "clsparseSCooMatrixfromFile" 'function))

(cffi:defcfun ("clsparseDCooMatrixfromFile" #.(swig-lispify "clsparseDCooMatrixfromFile" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (cooMatx :pointer)
  (filePath :string)
  (control :pointer)
  (read_explicit_zeroes :unsigned-int))

(cl:export '#.(swig-lispify "clsparseDCooMatrixfromFile" 'function))

(cffi:defcfun ("clsparseSCsrMatrixfromFile" #.(swig-lispify "clsparseSCsrMatrixfromFile" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (csrMatx :pointer)
  (filePath :string)
  (control :pointer)
  (read_explicit_zeroes :unsigned-int))

(cl:export '#.(swig-lispify "clsparseSCsrMatrixfromFile" 'function))

(cffi:defcfun ("clsparseDCsrMatrixfromFile" #.(swig-lispify "clsparseDCsrMatrixfromFile" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (csrMatx :pointer)
  (filePath :string)
  (control :pointer)
  (read_explicit_zeroes :unsigned-int))

(cl:export '#.(swig-lispify "clsparseDCsrMatrixfromFile" 'function))

(cffi:defcstruct #.(swig-lispify "clsparseMetaSizeResult" 'classname)
	(#.(swig-lispify "status" 'slotname) #.(swig-lispify "clsparseStatus" 'enumname))
	(#.(swig-lispify "metaSize" 'slotname) :unsigned-int))

(cl:export '#.(swig-lispify "clsparseMetaSizeResult" 'classname))

(cl:export '#.(swig-lispify "status" 'slotname))

(cl:export '#.(swig-lispify "metaSize" 'slotname))

(cffi:defcfun ("clsparseCsrMetaSize" #.(swig-lispify "clsparseCsrMetaSize" 'function)) (:struct #.(swig-lispify "clsparseMetaSizeResult" 'classname))
  (csrMatx :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseCsrMetaSize" 'function))

(cffi:defcfun ("clsparseCsrMetaCreate" #.(swig-lispify "clsparseCsrMetaCreate" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (csrMatx :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseCsrMetaCreate" 'function))

(cffi:defcfun ("clsparseCsrMetaDelete" #.(swig-lispify "clsparseCsrMetaDelete" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (csrMatx :pointer))

(cl:export '#.(swig-lispify "clsparseCsrMetaDelete" 'function))

(cffi:defcfun ("cldenseSscale" #.(swig-lispify "cldenseSscale" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (r :pointer)
  (alpha :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseSscale" 'function))

(cffi:defcfun ("cldenseDscale" #.(swig-lispify "cldenseDscale" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (r :pointer)
  (alpha :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseDscale" 'function))

(cffi:defcfun ("cldenseSaxpy" #.(swig-lispify "cldenseSaxpy" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (r :pointer)
  (alpha :pointer)
  (x :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseSaxpy" 'function))

(cffi:defcfun ("cldenseDaxpy" #.(swig-lispify "cldenseDaxpy" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (r :pointer)
  (alpha :pointer)
  (x :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseDaxpy" 'function))

(cffi:defcfun ("cldenseSaxpby" #.(swig-lispify "cldenseSaxpby" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (r :pointer)
  (alpha :pointer)
  (x :pointer)
  (beta :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseSaxpby" 'function))

(cffi:defcfun ("cldenseDaxpby" #.(swig-lispify "cldenseDaxpby" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (r :pointer)
  (alpha :pointer)
  (x :pointer)
  (beta :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseDaxpby" 'function))

(cffi:defcfun ("cldenseIreduce" #.(swig-lispify "cldenseIreduce" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (s :pointer)
  (x :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseIreduce" 'function))

(cffi:defcfun ("cldenseSreduce" #.(swig-lispify "cldenseSreduce" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (s :pointer)
  (x :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseSreduce" 'function))

(cffi:defcfun ("cldenseDreduce" #.(swig-lispify "cldenseDreduce" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (s :pointer)
  (x :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseDreduce" 'function))

(cffi:defcfun ("cldenseSnrm1" #.(swig-lispify "cldenseSnrm1" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (s :pointer)
  (x :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseSnrm1" 'function))

(cffi:defcfun ("cldenseDnrm1" #.(swig-lispify "cldenseDnrm1" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (s :pointer)
  (x :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseDnrm1" 'function))

(cffi:defcfun ("cldenseSnrm2" #.(swig-lispify "cldenseSnrm2" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (s :pointer)
  (x :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseSnrm2" 'function))

(cffi:defcfun ("cldenseDnrm2" #.(swig-lispify "cldenseDnrm2" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (s :pointer)
  (x :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseDnrm2" 'function))

(cffi:defcfun ("cldenseSdot" #.(swig-lispify "cldenseSdot" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (r :pointer)
  (x :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseSdot" 'function))

(cffi:defcfun ("cldenseDdot" #.(swig-lispify "cldenseDdot" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (r :pointer)
  (x :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseDdot" 'function))

(cffi:defcfun ("cldenseSadd" #.(swig-lispify "cldenseSadd" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (r :pointer)
  (x :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseSadd" 'function))

(cffi:defcfun ("cldenseDadd" #.(swig-lispify "cldenseDadd" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (r :pointer)
  (x :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseDadd" 'function))

(cffi:defcfun ("cldenseSsub" #.(swig-lispify "cldenseSsub" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (r :pointer)
  (x :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseSsub" 'function))

(cffi:defcfun ("cldenseDsub" #.(swig-lispify "cldenseDsub" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (r :pointer)
  (x :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseDsub" 'function))

(cffi:defcfun ("cldenseSmul" #.(swig-lispify "cldenseSmul" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (r :pointer)
  (x :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseSmul" 'function))

(cffi:defcfun ("cldenseDmul" #.(swig-lispify "cldenseDmul" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (r :pointer)
  (x :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseDmul" 'function))

(cffi:defcfun ("cldenseSdiv" #.(swig-lispify "cldenseSdiv" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (r :pointer)
  (x :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseSdiv" 'function))

(cffi:defcfun ("cldenseDdiv" #.(swig-lispify "cldenseDdiv" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (r :pointer)
  (x :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "cldenseDdiv" 'function))

(cffi:defcfun ("clsparseScsrmv" #.(swig-lispify "clsparseScsrmv" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (alpha :pointer)
  (matx :pointer)
  (x :pointer)
  (beta :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseScsrmv" 'function))

(cffi:defcfun ("clsparseDcsrmv" #.(swig-lispify "clsparseDcsrmv" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (alpha :pointer)
  (matx :pointer)
  (x :pointer)
  (beta :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseDcsrmv" 'function))

(cffi:defcfun ("clsparseScoomv" #.(swig-lispify "clsparseScoomv" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (alpha :pointer)
  (matx :pointer)
  (x :pointer)
  (beta :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseScoomv" 'function))

(cffi:defcfun ("clsparseDcoomv" #.(swig-lispify "clsparseDcoomv" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (alpha :pointer)
  (matx :pointer)
  (x :pointer)
  (beta :pointer)
  (y :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseDcoomv" 'function))

(cffi:defcfun ("clsparseScsrmm" #.(swig-lispify "clsparseScsrmm" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (alpha :pointer)
  (sparseMatA :pointer)
  (denseMatB :pointer)
  (beta :pointer)
  (denseMatC :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseScsrmm" 'function))

(cffi:defcfun ("clsparseDcsrmm" #.(swig-lispify "clsparseDcsrmm" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (alpha :pointer)
  (sparseMatA :pointer)
  (denseMatB :pointer)
  (beta :pointer)
  (denseMatC :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseDcsrmm" 'function))

(cffi:defcfun ("clsparseScsrSpGemm" #.(swig-lispify "clsparseScsrSpGemm" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (sparseMatA :pointer)
  (sparseMatB :pointer)
  (sparseMatC :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseScsrSpGemm" 'function))

(cffi:defcfun ("clsparseScsr2coo" #.(swig-lispify "clsparseScsr2coo" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (csr :pointer)
  (coo :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseScsr2coo" 'function))

(cffi:defcfun ("clsparseDcsr2coo" #.(swig-lispify "clsparseDcsr2coo" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (csr :pointer)
  (coo :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseDcsr2coo" 'function))

(cffi:defcfun ("clsparseScoo2csr" #.(swig-lispify "clsparseScoo2csr" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (coo :pointer)
  (csr :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseScoo2csr" 'function))

(cffi:defcfun ("clsparseDcoo2csr" #.(swig-lispify "clsparseDcoo2csr" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (coo :pointer)
  (csr :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseDcoo2csr" 'function))

(cffi:defcfun ("clsparseScsr2dense" #.(swig-lispify "clsparseScsr2dense" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (csr :pointer)
  (A :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseScsr2dense" 'function))

(cffi:defcfun ("clsparseDcsr2dense" #.(swig-lispify "clsparseDcsr2dense" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (csr :pointer)
  (A :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseDcsr2dense" 'function))

(cffi:defcfun ("clsparseSdense2csr" #.(swig-lispify "clsparseSdense2csr" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (A :pointer)
  (csr :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseSdense2csr" 'function))

(cffi:defcfun ("clsparseDdense2csr" #.(swig-lispify "clsparseDdense2csr" 'function)) #.(swig-lispify "clsparseStatus" 'enumname)
  (A :pointer)
  (csr :pointer)
  (control :pointer))

(cl:export '#.(swig-lispify "clsparseDdense2csr" 'function))



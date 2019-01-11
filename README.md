# cl-clsparse

[![Quicklisp](http://quickdocs.org/badge/cl-clsparse.svg)](http://quickdocs.org/cl-clsparse/)

cl-clsparse is a Common Lisp bindings for [clSPARSE](https://github.com/clMathLibraries/clSPARSE).

## Usage

```
(ql:quickload :cl-clsparse)
```

## Install

### Ubuntu 18.04 and Roswell

Install clSPARSE.

```
apt install libclsparse-dev
```

Install cl-clsparse.
```
ros install gos-k/cl-clsparse
```

## Test

```lisp
(ql:quickload '(:rove :cl-clsparse))
(rove:run :cl-clsparse/tests)
```

or

```
ros install rove
rove cl-clsparse.asd
```

## Requirements

* clSPARSE 0.10.2.0

## Verification environments

* Ubuntu 18.04
* SBCL 1.4.14 x86-64
* clSPARSE 0.10.2.0
* intel-opencl-r5.0
* SWIG 3.0.12

## Author

* gos-k (mag4.elan@gmail.com)

## Copyright

Copyright (c) 2018-2019 gos-k (mag4.elan@gmail.com)

## License

Licensed under the Apache License, Version 2.0.

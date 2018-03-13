# cl-clsparse

[![Quicklisp](http://quickdocs.org/badge/cl-clsparse.svg)](http://quickdocs.org/cl-clsparse/)

cl-clsparse is a Common Lisp bindings for [clSPARSE](https://github.com/clMathLibraries/clSPARSE).

## Usage

```
(ql:quickload :cl-clsparse)
```

## Install

### Ubuntu 17.10 and Roswell

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
(ql:quickload :cl-clsparse-test)
(prove:run :cl-clsparse-test)
```

or

```
ros install prove
run-prove cl-clsparse-test.asd
```

## Requirements

* clSPARSE 0.10.2.0

## Verification environments

* Ubuntu 17.10
* SBCL 1.3.21 x86-64
* clSPARSE 0.10.2.0
* intel-opencl-r5.0

## Author

* gos-k (mag4.elan@gmail.com)

## Copyright

Copyright (c) 2018 gos-k (mag4.elan@gmail.com)

## License

Licensed under the Apache License, Version 2.0.

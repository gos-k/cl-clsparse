%module clsparse_cffi
%feature("intern_function","1");
%feature("export");
typedef uint64_t size_t;
%include "clSPARSE-xx.h"
%include "clSPARSE-1x.h"
%include "clSPARSE.h"

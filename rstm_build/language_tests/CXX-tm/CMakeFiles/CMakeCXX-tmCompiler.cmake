#
#  Copyright (C) 2011
#  University of Rochester Department of Computer Science
#    and
#  Lehigh University Department of Computer Science and Engineering
# 
# License: Modified BSD
#          Please see the file LICENSE.RSTM for licensing information

#
# This file is configured during enable_language(CXX-tm) and means that we
# don't have to reconfigure CXX-tm every time that the project is
# reconfigured.
#

set(CMAKE_CXX-tm_COMPILER "CMAKE_CXX-tm_COMPILER-NOTFOUND")
set(CMAKE_CXX-tm_COMPILER_ARG1 "")
set(CMAKE_CXX-tm_COMPILER_ID "")

set(CMAKE_CXX-tm_LINK_DIRS32 "")
set(CMAKE_CXX-tm_LINK_DIRS64 "")

set(CMAKE_CXX-tm_COMPILER_LOADED 1)

set(CMAKE_CXX_IGNORE_EXTENSIONS
  inl;h;H;o;O;obj;OBJ;def;DEF;rc;C;M;c++;cc;cpp;cxx;m;mm)
set(CMAKE_CXX-tm_SOURCE_FILE_EXTENSIONS cxxtm;cpptm;cctm;c++tm)
set(CMAKE_CXX-tm_OUTPUT_EXTENSION .o)
set(CMAKE_CXX-tm_OUTPUT_EXTENSION_REPLACE 1)
set(CMAKE_CXX-tm_COMPILER_ENV_VAR "")

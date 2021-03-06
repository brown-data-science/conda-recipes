#!/bin/bash
if [ $(uname) == "Darwin" ]; then
  export LDFLAGS=$LDFLAGS" -L$PREFIX/lib -Wl,-rpath,$PREFIX/lib"
  export CFLAGS=$CFLAGS" -I${PREFIX}/include"
  ./configure --prefix=$PREFIX --disable-Bsymbolic
else
  ./configure --prefix=$PREFIX
fi
make
make install

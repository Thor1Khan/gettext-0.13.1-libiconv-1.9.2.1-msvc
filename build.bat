if not exist %~dp0gettext mkdir %~dp0gettext
pushd libiconv-1.9.2-src
nmake -f Makefile.msvc NO_NLS=1 MFLAGS=-MD
nmake -f Makefile.msvc NO_NLS=1 MFLAGS=-MD install PREFIX=%~dp0gettext
popd
pushd gettext-0.13.1
nmake -f Makefile.msvc MFLAGS=-MD PREFIX=%~dp0gettext
nmake -f Makefile.msvc MFLAGS=-MD install PREFIX=%~dp0gettext
popd
pushd libiconv-1.9.2-src
nmake -f Makefile.msvc NO_NLS=1 MFLAGS=-MD distclean
nmake -f Makefile.msvc MFLAGS=-MD PREFIX=%~dp0gettext
nmake -f Makefile.msvc MFLAGS=-MD install PREFIX=%~dp0gettext
popd


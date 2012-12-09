if not exist %~dp0gettext mkdir %~dp0gettext
pushd libiconv-1.9.2-src
nmake -f Makefile.msvc DLL=1 NO_NLS=1 MFLAGS=-MD INSTALLPREFIX=%~dp0gettext
nmake -f Makefile.msvc DLL=1 NO_NLS=1 MFLAGS=-MD install INSTALLPREFIX=%~dp0gettext
popd
pushd gettext-0.13.1
nmake -f Makefile.msvc DLL=1 MFLAGS=-MD INSTALLPREFIX=%~dp0gettext
nmake -f Makefile.msvc DLL=1 MFLAGS=-MD install INSTALLPREFIX=%~dp0gettext
popd
pushd libiconv-1.9.2-src
nmake -f Makefile.msvc DLL=1 NO_NLS=1 MFLAGS=-MD INSTALLPREFIX=%~dp0gettext distclean
nmake -f Makefile.msvc DLL=1 MFLAGS=-MD INSTALLPREFIX=%~dp0gettext
nmake -f Makefile.msvc DLL=1 MFLAGS=-MD install INSTALLPREFIX=%~dp0gettext
popd


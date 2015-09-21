dnl $Id$
dnl config.m4 for extension arr

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(arr, for arr support,
dnl Make sure that the comment is aligned:
dnl [  --with-arr             Include arr support])

dnl Otherwise use enable:

dnl PHP_ARG_ENABLE(arr, whether to enable arr support,
dnl Make sure that the comment is aligned:
dnl [  --enable-arr           Enable arr support])

if test "$PHP_ARR" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-arr -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/arr.h"  # you most likely want to change this
  dnl if test -r $PHP_ARR/$SEARCH_FOR; then # path given as parameter
  dnl   ARR_DIR=$PHP_ARR
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for arr files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       ARR_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$ARR_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the arr distribution])
  dnl fi

  dnl # --with-arr -> add include path
  dnl PHP_ADD_INCLUDE($ARR_DIR/include)

  dnl # --with-arr -> check for lib and symbol presence
  dnl LIBNAME=arr # you may want to change this
  dnl LIBSYMBOL=arr # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $ARR_DIR/lib, ARR_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_ARRLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong arr lib version or lib not found])
  dnl ],[
  dnl   -L$ARR_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(ARR_SHARED_LIBADD)

  PHP_NEW_EXTENSION(arr, arr.c, $ext_shared)
fi

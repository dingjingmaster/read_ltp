BEGIN {
S["am__EXEEXT_FALSE"]=""
S["am__EXEEXT_TRUE"]="#"
S["LTLIBOBJS"]=""
S["LIBOBJS"]=""
S["HOST_CPU"]="x86_64"
S["TIRPC_LIBS"]="-ltirpc"
S["TIRPC_CPPFLAGS"]="-I/usr/include/tirpc"
S["NUMA_LIBS"]="-lnuma"
S["AIO_LIBS"]="-laio"
S["SELINUX_LIBS"]=""
S["UCLINUX"]="0"
S["KEYUTILS_LIBS"]="-lkeyutils"
S["WITH_MODULES"]="yes"
S["LINUX_VERSION_PATCH"]="19"
S["LINUX_VERSION_MAJOR"]="4"
S["LINUX_DIR"]="/lib/modules/4.19.69-1-MANJARO/build"
S["LINUX_VERSION"]="4.19.69-1-MANJARO"
S["HAVE_FTS_H"]="1"
S["CRYPTO_LIBS"]="-lcrypto"
S["GCC_WARN_OLDSTYLE"]="-Wold-style-definition"
S["CAP_LIBS"]="-lcap"
S["ACL_LIBS"]="-lacl"
S["subdirs"]=" utils/ffsb-6.0-rc2"
S["WITH_REALTIME_TESTSUITE"]="no"
S["WITH_OPEN_POSIX_TESTSUITE"]="no"
S["WITH_PYTHON"]="no"
S["WITH_PERL"]="no"
S["WITH_EXPECT"]="no"
S["WITH_BASH"]="no"
S["EGREP"]="/usr/bin/grep -E"
S["GREP"]="/usr/bin/grep"
S["CPP"]="gcc -E"
S["YFLAGS"]=""
S["YACC"]="bison -y"
S["RANLIB"]="ranlib"
S["LEXLIB"]="-lfl"
S["LEX_OUTPUT_ROOT"]="lex.yy"
S["LEX"]="flex"
S["AR"]="ar"
S["am__fastdepCC_FALSE"]=""
S["am__fastdepCC_TRUE"]="#"
S["CCDEPMODE"]="depmode=none"
S["am__nodep"]="_no"
S["AMDEPBACKSLASH"]="\\"
S["AMDEP_FALSE"]="#"
S["AMDEP_TRUE"]=""
S["am__include"]="include"
S["DEPDIR"]=".deps"
S["OBJEXT"]="o"
S["EXEEXT"]=""
S["ac_ct_CC"]="gcc"
S["CPPFLAGS"]=" -D_FORTIFY_SOURCE=2"
S["LDFLAGS"]=""
S["CFLAGS"]="-g -O2"
S["CC"]="gcc"
S["host_os"]="linux-gnu"
S["host_vendor"]="pc"
S["host_cpu"]="x86_64"
S["host"]="x86_64-pc-linux-gnu"
S["build_os"]="linux-gnu"
S["build_vendor"]="pc"
S["build_cpu"]="x86_64"
S["build"]="x86_64-pc-linux-gnu"
S["CROSS_COMPILATION_FALSE"]=""
S["CROSS_COMPILATION_TRUE"]="#"
S["MAINT"]=""
S["MAINTAINER_MODE_FALSE"]="#"
S["MAINTAINER_MODE_TRUE"]=""
S["AM_BACKSLASH"]="\\"
S["AM_DEFAULT_VERBOSITY"]="1"
S["AM_DEFAULT_V"]="$(AM_DEFAULT_VERBOSITY)"
S["AM_V"]="$(V)"
S["am__untar"]="$${TAR-tar} xf -"
S["am__tar"]="$${TAR-tar} chof - \"$$tardir\""
S["AMTAR"]="$${TAR-tar}"
S["am__leading_dot"]="."
S["SET_MAKE"]=""
S["AWK"]="gawk"
S["mkdir_p"]="$(MKDIR_P)"
S["MKDIR_P"]="/usr/bin/mkdir -p"
S["INSTALL_STRIP_PROGRAM"]="$(install_sh) -c -s"
S["STRIP"]="strip"
S["install_sh"]="${SHELL} /home/dingjing/ltp-20190930/install-sh"
S["MAKEINFO"]="${SHELL} /home/dingjing/ltp-20190930/missing makeinfo"
S["AUTOHEADER"]="${SHELL} /home/dingjing/ltp-20190930/missing autoheader"
S["AUTOMAKE"]="${SHELL} /home/dingjing/ltp-20190930/missing automake-1.16"
S["AUTOCONF"]="${SHELL} /home/dingjing/ltp-20190930/missing autoconf"
S["ACLOCAL"]="${SHELL} /home/dingjing/ltp-20190930/missing aclocal-1.16"
S["VERSION"]="LTP_VERSION"
S["PACKAGE"]="ltp"
S["CYGPATH_W"]="echo"
S["am__isrc"]=""
S["INSTALL_DATA"]="${INSTALL} -m 644"
S["INSTALL_SCRIPT"]="${INSTALL}"
S["INSTALL_PROGRAM"]="${INSTALL}"
S["target_alias"]=""
S["host_alias"]=""
S["build_alias"]=""
S["LIBS"]=""
S["ECHO_T"]=""
S["ECHO_N"]="-n"
S["ECHO_C"]=""
S["DEFS"]="-DHAVE_CONFIG_H"
S["mandir"]="${datarootdir}/man"
S["localedir"]="${datarootdir}/locale"
S["libdir"]="${exec_prefix}/lib"
S["psdir"]="${docdir}"
S["pdfdir"]="${docdir}"
S["dvidir"]="${docdir}"
S["htmldir"]="${docdir}"
S["infodir"]="${datarootdir}/info"
S["docdir"]="${datarootdir}/doc/${PACKAGE_TARNAME}"
S["oldincludedir"]="/usr/include"
S["includedir"]="${prefix}/include"
S["localstatedir"]="${prefix}/var"
S["sharedstatedir"]="${prefix}/com"
S["sysconfdir"]="${prefix}/etc"
S["datadir"]="${datarootdir}"
S["datarootdir"]="${prefix}/share"
S["libexecdir"]="${exec_prefix}/libexec"
S["sbindir"]="${exec_prefix}/sbin"
S["bindir"]="${exec_prefix}/bin"
S["program_transform_name"]="s,x,x,"
S["prefix"]="/opt/ltp"
S["exec_prefix"]="${prefix}"
S["PACKAGE_URL"]=""
S["PACKAGE_BUGREPORT"]="ltp@lists.linux.it"
S["PACKAGE_STRING"]="ltp LTP_VERSION"
S["PACKAGE_VERSION"]="LTP_VERSION"
S["PACKAGE_TARNAME"]="ltp"
S["PACKAGE_NAME"]="ltp"
S["PATH_SEPARATOR"]=":"
S["SHELL"]="/bin/sh"
S["am__quote"]=""
  for (key in S) S_is_set[key] = 1
  FS = ""

}
{
  line = $ 0
  nfields = split(line, field, "@")
  substed = 0
  len = length(field[1])
  for (i = 2; i < nfields; i++) {
    key = field[i]
    keylen = length(key)
    if (S_is_set[key]) {
      value = S[key]
      line = substr(line, 1, len) "" value "" substr(line, len + keylen + 3)
      len += length(value) + length(field[++i])
      substed = 1
    } else
      len += 1 + keylen
  }

  print line
}


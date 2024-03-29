#
#    config.mk.in.
#
#    Copyright (C) 2009, Cisco Systems Inc.
#
#    This program is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License along
#    with this program; if not, write to the Free Software Foundation, Inc.,
#    51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#
# Ngie Cooper, July 2009
#

# See this page for more info about LEX*:
# http://www.gnu.org/software/hello/manual/autoconf/Particular-Programs.html

# Application specifying variables. You should never have to change these.
AR			:= ar
CC			:= gcc
LEX			:= flex
RANLIB			:= ranlib
STRIP			:= strip
YACC			:= bison -y

# XXX: I'm lazy... but if someone has a working javac, they should have a
# working jar on their systems.
JAR			:= jar
JAVAC			:= @JAVAC@

AIO_LIBS		:= -laio
CAP_LIBS		:= -lcap
ACL_LIBS		:= -lacl
CRYPTO_LIBS		:= -lcrypto
LEXLIB			:= -lfl
NUMA_LIBS		:= -lnuma
SELINUX_LIBS		:= 
TIRPC_CPPFLAGS		:= -I/usr/include/tirpc
TIRPC_LIBS		:= -ltirpc
KEYUTILS_LIBS		:= -lkeyutils
HAVE_FTS_H		:= 1

prefix			:= /opt/ltp

datarootdir		:= ${prefix}/share
includedir		:= ${prefix}/include
exec_prefix		:= ${prefix}
bindir			:= ${exec_prefix}/bin
libdir			:= ${exec_prefix}/lib
mandir			:= ${datarootdir}/man

CPPFLAGS		:=  -D_FORTIFY_SOURCE=2
CFLAGS			:= -g -O2
LDLIBS			:= 
LDFLAGS			:= 

DEBUG_CFLAGS		?= -g

# Please see README.mk-devel about -fstrict-aliasing.
OPT_CFLAGS		?= -O2 -fno-strict-aliasing -pipe

WCFLAGS			?= -Wall -W -Wold-style-definition

LDFLAGS			+= $(WLDFLAGS)
CFLAGS			+= $(DEBUG_CFLAGS) $(OPT_CFLAGS) $(WCFLAGS)

LINUX_VERSION		:= 4.19.69-1-MANJARO
LINUX_DIR		:= /lib/modules/4.19.69-1-MANJARO/build
LINUX_VERSION_MAJOR	:= 4
LINUX_VERSION_PATCH	:= 19
WITH_MODULES		:= yes

HOST_CPU		:= x86_64

ifeq ($(strip $(prefix)),)
$(error you are using $$(prefix) incorrectly -- set it to $(abs_top_srcdir) if you want to build in the source tree)
endif

export datarootdir includedir libdir mandir prefix

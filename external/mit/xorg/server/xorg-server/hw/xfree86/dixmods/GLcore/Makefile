#	$NetBSD$

XMODULEDIR=	${X11USRLIBDIR}/modules/extensions

.include "../../../../Makefile.serverlib"
.include "../../../../Makefile.servermod"

LIB=	GLcore

.PATH:	${X11SRCDIR.xorg-server}/hw/xfree86/dixmods
SRCS=	${SRCS.GLcore} GLcoremodule.c

.include "../../../../GL/GLcore/Makefile.GLcore"

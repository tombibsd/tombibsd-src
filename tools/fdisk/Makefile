#	$NetBSD$

HOSTPROGNAME=	${MACHINE_GNU_PLATFORM}-fdisk
HOST_SRCDIR=	sbin/fdisk
HOST_SRCS=	disklabel.c

HOST_CPPFLAGS=	-DDEFAULT_BOOTDIR=\"${DESTDIR}/usr/mdec\"

.include "${.CURDIR}/../Makefile.nbincludes"
.include "${.CURDIR}/../Makefile.host"

.PATH: ${.CURDIR}/../../lib/libc/gen

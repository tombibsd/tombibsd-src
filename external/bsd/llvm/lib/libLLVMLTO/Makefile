#	$NetBSD$

LIB=	LLVMLTO

.include <bsd.init.mk>

.PATH: ${LLVM_SRCDIR}/lib/LTO

SRCS+=	LTOCodeGenerator.cpp \
	LTOModule.cpp

.if defined(HOSTLIB)
.include <bsd.hostlib.mk>
.else
.include <bsd.lib.mk>
.endif

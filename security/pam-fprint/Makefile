# $NetBSD: Makefile,v 1.3 2010/01/24 13:26:12 wiz Exp $

DISTNAME=	pam_fprint-0.2
PKGNAME=	${DISTNAME:S/_/-/}
PKGREVISION=	2
CATEGORIES=	security
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fprint/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	plunky@rya-online.net
HOMEPAGE=	http://reactivated.net/fprint/wiki/Pam_fprint
COMMENT=	PAM module to provide authentication using fingerprint readers

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		yes
USE_LANGUAGES=		c c++
USE_TOOLS+=		gmake pkg-config

# Fix (workaround?) a bug with openpam/NetBSD
# The bug is described in PR security/39313.
#
.include "../../mk/bsd.prefs.mk"
#
.if ${OPSYS} == "NetBSD"
CFLAGS+=		-DNO_STATIC_MODULES
.endif

.include "../../security/libfprint/buildlink3.mk"
.include "../../mk/pam.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

# $NetBSD: Makefile,v 1.17 2011/03/20 06:55:13 obache Exp $

DISTNAME=	wmnet-1.06
PKGREVISION=	5
CATEGORIES=	net x11
MASTER_SITES=	http://www.katharineosborne.com/wmnet/

# Random patches:
# http://www.rampant.org/~dp/software/wmnet.solaris.patch -- included
# http://glitchy.net/code/wmnet/wmnet-1.06-ul_fix.diff
# http://mail.afterstep.org/pipermail/as-users/2004-December/001457.html

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.katharineosborne.com/wmnet/
COMMENT=	Dockable network monitor

PKG_DESTDIR_SUPPORT=	user-destdir

USE_IMAKE=	YES

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "FreeBSD" || ${OPSYS} == "NetBSD" || ${OPSYS} == "OpenBSD"
MAKE_FLAGS+=	INSTPGMFLAGS=""
SPECIAL_PERMS+=	bin/wmnet ${BINOWN} kmem 2555
.endif

.include "../../x11/libXext/buildlink3.mk"
.include "../../x11/xextproto/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

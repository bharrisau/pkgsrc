# $NetBSD: Makefile,v 1.23 2011/03/21 02:36:40 obache Exp $

DISTNAME=	nap-1.4.4
PKGREVISION=	2
CATEGORIES=	net
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=nap/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://nap.sourceforge.net/
COMMENT=	Terminal based Napster client similar to ircII

PKG_DESTDIR_SUPPORT=	user-destdir

GNU_CONFIGURE=		YES

# newterm()
INCOMPAT_CURSES=	NetBSD-1.4*-*
INCOMPAT_CURSES+=	NetBSD-1.5-* NetBSD-1.5.*-* NetBSD-1.5[A-Z]-*

INSTALLATION_DIRS+=	share/doc/nap share/examples/nap

post-install:
	${INSTALL_DATA} ${WRKSRC}/README ${DESTDIR}${PREFIX}/share/doc/nap
	${INSTALL_DATA} ${WRKSRC}/nap.conf.dist \
		${DESTDIR}${PREFIX}/share/examples/nap/nap.conf

.include "../../devel/ncurses/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

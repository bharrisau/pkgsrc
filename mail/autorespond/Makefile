# $NetBSD: Makefile,v 1.11 2008/03/04 17:57:17 jlam Exp $
#

DISTNAME=	autorespond-2.0.5
CATEGORIES=	mail
MASTER_SITES=	${HOMEPAGE}

MAINTAINER=	schmonz@NetBSD.org
HOMEPAGE=	http://www.inter7.com/devel/
COMMENT=	Simple autoresponder add-on package for qmail

DEPENDS+=	qmail>=1.03:../../mail/qmail

PKG_DESTDIR_SUPPORT=	user-destdir

SUBST_CLASSES+=		qmaildir
SUBST_STAGE.qmaildir=	do-configure
SUBST_FILES.qmaildir=	autorespond.c
SUBST_SED.qmaildir=	-e 's|/var/qmail|${QMAILDIR}|g'

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1
BUILD_DEFS+=		QMAILDIR

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/autorespond ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/autorespond.1 \
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/doc/autorespond
	${INSTALL_DATA} ${WRKSRC}/README \
		${DESTDIR}${PREFIX}/share/doc/autorespond
	${INSTALL_DATA} ${WRKSRC}/qmail-auto \
		${DESTDIR}${PREFIX}/share/doc/autorespond

.include "../../mk/bsd.pkg.mk"

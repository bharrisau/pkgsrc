# $NetBSD: Makefile,v 1.6 2012/09/15 15:03:25 obache Exp $
#

PKGNAME=		libpreludedb-mysql-${VERSION}
PKGREVISION=		4
COMMENT=		MySQL plugin for LibPreludeDB

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../security/libpreludedb/Makefile.common"

CONFIGURE_ARGS+=	--with-perl=no
CONFIGURE_ARGS+=	--with-python=no
CONFIGURE_ARGS+=	--with-sqlite3=no
CONFIGURE_ARGS+=	--with-postgresql=no

BUILD_DIRS=		plugins/sql

CONFIGURE_ARGS+=	--with-mysql=${BUILDLINK_PREFIX.mysql-client}/bin/mysql_config

.include "../../mk/mysql.buildlink3.mk"
.include "../../security/libpreludedb/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"

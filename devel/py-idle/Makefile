# $NetBSD: Makefile,v 1.31 2012/03/22 09:23:07 markd Exp $
#

PKGNAME=	${PYPKGPREFIX}-idle-0
PKGREVISION=	2
CATEGORIES=	devel python

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.python.org/idle/
COMMENT=	IDLE - The Integrated DeveLopment Environment for Python

DEPENDS+=	${PYPKGPREFIX}-Tk-[0-9]*:../../x11/py-Tk

PKG_DESTDIR_SUPPORT=	user-destdir

PYTHON_VERSIONS_INCLUDE_3X=	yes

PY_PATCHPLIST=	yes
PLIST_SUBST+=	PYVERSSUFFIX=${PYVERSSUFFIX:Q}

# ignore errors due to missing files (EXTRACT_ELEMENTS!)
do-patch:
	(cd ${WRKSRC}; \
	for f in ${PATCHDIR}/patch-*;do \
	${PATCH} --batch <$$f || ${TRUE}; \
	done)

#
# With Python-2.3 and up, the Idle code is part of the base library.
# We just install a wrapper script. Also, threads are required now.
# NOTE: if you add a new version of Python here, add to the following test
#
.include "../../lang/python/extension.mk"

.if ${_PYTHON_VERSION} >= 31
IDLE_NAME=	idle3
.else
IDLE_NAME=	idle
.endif

EXTRACT_ELEMENTS=	${PYSUBDIR}/Tools/scripts/${IDLE_NAME}
PYTHON_PATCH_SCRIPTS= Tools/scripts/${IDLE_NAME}
NO_BUILD=	yes
INSTALLATION_DIRS=	bin

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/Tools/scripts/${IDLE_NAME} \
		${DESTDIR}${PREFIX}/bin/idle${PYVERSSUFFIX}

.include "../../lang/python/srcdist.mk"
.include "../../lang/python/application.mk"
.include "../../mk/bsd.pkg.mk"

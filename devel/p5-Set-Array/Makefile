# $NetBSD: Makefile,v 1.2 2012/09/10 14:57:37 wen Exp $
#

DISTNAME=	Set-Array-0.26
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Set/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Set-Array/
COMMENT=	Arrays as objects with lots of handy methods
LICENSE=	${PERL5_LICENSE}

PKG_DESTDIR_SUPPORT=	user-destdir

BUILD_DEPENDS+=	p5-Try-Tiny>=0.11:../../devel/p5-Try-Tiny
BUILD_DEPENDS+=	p5-Test-Deep>=0:../../devel/p5-Test-Deep
BUILD_DEPENDS+=	p5-Test-Pod>=0:../../devel/p5-Test-Pod
DEPENDS+=	p5-Want>=0:../../devel/p5-Want

PERL5_MODULE_TYPE=	Module::Build
PERL5_PACKLIST=		auto/Set/Array/.packlist
USE_LANGUAGES=		# none

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"

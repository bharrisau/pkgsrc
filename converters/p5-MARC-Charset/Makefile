# $NetBSD: Makefile,v 1.5 2011/10/06 15:06:07 hiramatsu Exp $

DISTNAME=	MARC-Charset-1.33
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	converters perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=MARC/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/MARC-Charset/
COMMENT=	Convert MARC-8 encoded strings to UTF-8
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-gdbm-[0-9]*:../../databases/p5-gdbm
DEPENDS+=	p5-XML-SAX-[0-9]*:../../textproc/p5-XML-SAX
DEPENDS+=	p5-Class-Accessor-[0-9]*:../../devel/p5-Class-Accessor

USE_LANGUAGES=	# empty
PERL5_PACKLIST=	auto/MARC/Charset/.packlist

PKG_DESTDIR_SUPPORT=	user-destdir

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"

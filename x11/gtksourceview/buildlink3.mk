# $NetBSD: buildlink3.mk,v 1.31 2012/09/15 10:06:56 obache Exp $

BUILDLINK_TREE+=	gtksourceview

.if !defined(GTKSOURCEVIEW_BUILDLINK3_MK)
GTKSOURCEVIEW_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.gtksourceview+=	gtksourceview>=1.8.5
BUILDLINK_ABI_DEPENDS.gtksourceview+=	gtksourceview>=1.8.5nb14
BUILDLINK_PKGSRCDIR.gtksourceview?=	../../x11/gtksourceview

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../print/libgnomeprint/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.endif # GTKSOURCEVIEW_BUILDLINK3_MK

BUILDLINK_TREE+=	-gtksourceview

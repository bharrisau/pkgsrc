$NetBSD: patch-src_ZipArchive_DirEnumerator.cpp,v 1.4 2012/08/12 02:12:51 marino Exp $

Add DragonFly support.

--- src/ZipArchive/DirEnumerator.cpp.orig	2011-10-14 18:30:31 +0000
+++ src/ZipArchive/DirEnumerator.cpp
@@ -73,7 +73,7 @@ bool CDirEnumerator::Start(CFileFilter& 
 				if (!entry)
 					break;								
 				CZipString path(m_szCurrentDirectory + entry->d_name);
-	#if !defined __APPLE__ && !defined __CYGWIN__ && !defined __NetBSD__ 
+	#if !defined __APPLE__ && !defined __CYGWIN__ && !defined __NetBSD__ && !defined __DragonFly__
 				struct stat64 sStats;
 				if (stat64(path, &sStats) == -1)
 	#else

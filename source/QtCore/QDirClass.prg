/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QFILEINFO
REQUEST QDIR
REQUEST QCHAR

CLASS QDir

   DATA pointer
   DATA class_id INIT Class_Id_QDir
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD absoluteFilePath
   METHOD absolutePath
   METHOD canonicalPath
   METHOD cd
   METHOD cdUp
   METHOD count
   METHOD dirName
   METHOD entryInfoList1
   METHOD entryInfoList2
   METHOD entryInfoList
   METHOD entryList1
   METHOD entryList2
   METHOD entryList
   METHOD exists1
   METHOD exists2
   METHOD exists
   METHOD filePath
   METHOD filter
   METHOD isAbsolute
   METHOD isReadable
   METHOD isRelative
   METHOD isRoot
   METHOD makeAbsolute
   METHOD mkdir
   METHOD mkpath
   METHOD nameFilters
   METHOD path
   METHOD refresh
   METHOD relativeFilePath
   METHOD remove
   METHOD rename
   METHOD rmdir
   METHOD rmpath
   METHOD setFilter
   METHOD setNameFilters
   METHOD setPath
   METHOD setSorting
   METHOD sorting
   METHOD addSearchPath
   METHOD cleanPath
   METHOD current
   METHOD currentPath
   METHOD drives
   METHOD fromNativeSeparators
   METHOD home
   METHOD homePath
   METHOD isAbsolutePath
   METHOD isRelativePath
   METHOD match1
   METHOD match2
   METHOD match
   METHOD root
   METHOD rootPath
   METHOD searchPaths
   METHOD separator
   METHOD setCurrent
   METHOD setSearchPaths
   METHOD temp
   METHOD tempPath
   METHOD toNativeSeparators
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QDir
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QDir
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QDir
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QDir
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QDir
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QDir
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

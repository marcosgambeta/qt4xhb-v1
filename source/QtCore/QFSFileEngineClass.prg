/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDATETIME
REQUEST QFILEINFO

CLASS QFSFileEngine INHERIT QAbstractFileEngine

   DATA class_id INIT Class_Id_QFSFileEngine
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD open1
   METHOD open2
   METHOD open3
   METHOD open4
   METHOD open
   METHOD caseSensitive
   METHOD close
   METHOD copy
   METHOD fileFlags
   METHOD fileName
   METHOD fileTime
   METHOD flush
   METHOD handle
   METHOD isRelativePath
   METHOD isSequential
   METHOD link
   METHOD mkdir
   METHOD owner
   METHOD ownerId
   METHOD pos
   METHOD read
   METHOD readLine
   METHOD remove
   METHOD rename
   METHOD rmdir
   METHOD seek
   METHOD setFileName
   METHOD setPermissions
   METHOD setSize
   METHOD size
   METHOD supportsExtension
   METHOD write
   METHOD currentPath
   METHOD drives
   METHOD homePath
   METHOD rootPath
   METHOD setCurrentPath
   METHOD tempPath
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFSFileEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

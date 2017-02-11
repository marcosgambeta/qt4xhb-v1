/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDATETIME
REQUEST QABSTRACTFILEENGINE

CLASS QAbstractFileEngine

   DATA pointer
   DATA class_id INIT Class_Id_QAbstractFileEngine
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD atEnd
   METHOD caseSensitive
   METHOD close
   METHOD copy
   METHOD entryList
   METHOD error
   METHOD errorString
   METHOD fileFlags
   METHOD fileName
   METHOD fileTime
   METHOD flush
   METHOD handle
   METHOD isRelativePath
   METHOD isSequential
   METHOD link
   METHOD mkdir
   METHOD open
   METHOD owner
   METHOD ownerId
   METHOD pos
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
   METHOD create
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QAbstractFileEngine
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QAbstractFileEngine
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QAbstractFileEngine
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QAbstractFileEngine
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QAbstractFileEngine
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QAbstractFileEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

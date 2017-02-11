/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDATETIME

CLASS QUrlInfo

   DATA pointer
   DATA class_id INIT Class_Id_QUrlInfo
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD group
   METHOD isDir
   METHOD isExecutable
   METHOD isFile
   METHOD isReadable
   METHOD isSymLink
   METHOD isValid
   METHOD isWritable
   METHOD lastModified
   METHOD lastRead
   METHOD name
   METHOD owner
   METHOD permissions
   METHOD setDir
   METHOD setFile
   METHOD setGroup
   METHOD setLastModified
   METHOD setLastRead
   METHOD setName
   METHOD setOwner
   METHOD setPermissions
   METHOD setReadable
   METHOD setSize
   METHOD setSymLink
   METHOD setWritable
   METHOD size
   METHOD equal
   METHOD greaterThan
   METHOD lessThan
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QUrlInfo
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QUrlInfo
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QUrlInfo
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QUrlInfo
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QUrlInfo
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QUrlInfo
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

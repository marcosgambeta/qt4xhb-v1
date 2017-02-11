/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QSystemSemaphore

   DATA pointer
   DATA class_id INIT Class_Id_QSystemSemaphore
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD acquire
   METHOD error
   METHOD errorString
   METHOD key
   METHOD release
   METHOD setKey
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QSystemSemaphore
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QSystemSemaphore
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QSystemSemaphore
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QSystemSemaphore
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QSystemSemaphore
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QSystemSemaphore
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

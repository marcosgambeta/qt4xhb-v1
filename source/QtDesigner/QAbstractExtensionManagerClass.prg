/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QOBJECT

CLASS QAbstractExtensionManager

   DATA pointer
   DATA class_id INIT Class_Id_QAbstractExtensionManager
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD extension
   METHOD registerExtensions
   METHOD unregisterExtensions
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QAbstractExtensionManager
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QAbstractExtensionManager
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QAbstractExtensionManager
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QAbstractExtensionManager
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QAbstractExtensionManager
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QAbstractExtensionManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

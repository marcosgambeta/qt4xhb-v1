/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QMetaType

   DATA pointer
   DATA class_id INIT Class_Id_QMetaType
   DATA self_destruction INIT .f.

   METHOD registerTypedef
   METHOD type
   METHOD typeName
   METHOD isRegistered
   METHOD construct
   METHOD destroy
   METHOD unregisterType
   METHOD save
   METHOD load
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QMetaType
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QMetaType
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QMetaType
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QMetaType
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QMetaType
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QMetaType
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

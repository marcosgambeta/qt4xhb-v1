/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMODELINDEX
REQUEST QVARIANT
REQUEST QABSTRACTITEMMODEL

CLASS QModelIndex

   DATA pointer
   DATA class_id INIT Class_Id_QModelIndex
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD child
   METHOD column
   METHOD data
   METHOD flags
   METHOD internalId
   METHOD internalPointer
   METHOD isValid
   METHOD model
   METHOD parent
   METHOD row
   METHOD sibling
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QModelIndex
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QModelIndex
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QModelIndex
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QModelIndex
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QModelIndex
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QModelIndex
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

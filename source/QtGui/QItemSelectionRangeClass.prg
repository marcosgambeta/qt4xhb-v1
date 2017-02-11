/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMODELINDEX
REQUEST QITEMSELECTIONRANGE
REQUEST QABSTRACTITEMMODEL

CLASS QItemSelectionRange

   DATA pointer
   DATA class_id INIT Class_Id_QItemSelectionRange
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD bottom
   METHOD bottomRight
   METHOD contains1
   METHOD contains2
   METHOD contains
   METHOD height
   METHOD indexes
   METHOD intersected
   METHOD intersects
   METHOD isEmpty
   METHOD isValid
   METHOD left
   METHOD model
   METHOD parent
   METHOD right
   METHOD top
   METHOD topLeft
   METHOD width
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QItemSelectionRange
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QItemSelectionRange
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QItemSelectionRange
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QItemSelectionRange
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QItemSelectionRange
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QItemSelectionRange
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

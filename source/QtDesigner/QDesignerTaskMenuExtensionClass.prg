/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QACTION

CLASS QDesignerTaskMenuExtension

   DATA pointer
   DATA class_id INIT Class_Id_QDesignerTaskMenuExtension
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD preferredEditAction
   METHOD taskActions
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QDesignerTaskMenuExtension
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QDesignerTaskMenuExtension
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QDesignerTaskMenuExtension
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QDesignerTaskMenuExtension
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QDesignerTaskMenuExtension
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QDesignerTaskMenuExtension
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

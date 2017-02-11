/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBYTEARRAY

CLASS QDesignerMemberSheetExtension

   DATA pointer
   DATA class_id INIT Class_Id_QDesignerMemberSheetExtension
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD count
   METHOD declaredInClass
   METHOD indexOf
   METHOD inheritedFromWidget
   METHOD isSignal
   METHOD isSlot
   METHOD isVisible
   METHOD memberGroup
   METHOD memberName
   METHOD parameterNames
   METHOD parameterTypes
   METHOD setMemberGroup
   METHOD setVisible
   METHOD signature
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QDesignerMemberSheetExtension
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QDesignerMemberSheetExtension
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QDesignerMemberSheetExtension
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QDesignerMemberSheetExtension
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QDesignerMemberSheetExtension
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QDesignerMemberSheetExtension
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

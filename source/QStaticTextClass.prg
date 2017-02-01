/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIZEF
REQUEST QTEXTOPTION

CLASS QStaticText

   DATA pointer
   DATA class_id INIT Class_Id_QStaticText
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD performanceHint
   METHOD prepare
   METHOD setPerformanceHint
   METHOD setText
   METHOD setTextFormat
   METHOD setTextOption
   METHOD setTextWidth
   METHOD size
   METHOD text
   METHOD textFormat
   METHOD textOption
   METHOD textWidth
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QStaticText
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QStaticText
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QStaticText
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QStaticText
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QStaticText
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QStaticText
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECTF
REQUEST QPOINTF

CLASS QTextLine

   DATA pointer
   DATA class_id INIT Class_Id_QTextLine
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD ascent
   METHOD cursorToX1
   METHOD cursorToX2
   METHOD cursorToX
   METHOD descent
   METHOD height
   METHOD horizontalAdvance
   METHOD isValid
   METHOD leading
   METHOD leadingIncluded
   METHOD lineNumber
   METHOD naturalTextRect
   METHOD naturalTextWidth
   METHOD position
   METHOD rect
   METHOD setLeadingIncluded
   METHOD setLineWidth
   METHOD setNumColumns1
   METHOD setNumColumns2
   METHOD setNumColumns
   METHOD setPosition
   METHOD textLength
   METHOD textStart
   METHOD width
   METHOD x
   METHOD xToCursor
   METHOD y
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QTextLine
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QTextLine
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QTextLine
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QTextLine
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QTextLine
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QTextLine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTEXTFORMAT
REQUEST QRECTF

CLASS QTextInlineObject

   DATA pointer
   DATA class_id INIT Class_Id_QTextInlineObject
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD ascent
   METHOD descent
   METHOD format
   METHOD formatIndex
   METHOD height
   METHOD isValid
   METHOD rect
   METHOD setAscent
   METHOD setDescent
   METHOD setWidth
   METHOD textDirection
   METHOD textPosition
   METHOD width
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QTextInlineObject
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QTextInlineObject
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QTextInlineObject
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QTextInlineObject
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QTextInlineObject
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QTextInlineObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECTF
REQUEST QTEXTLINE
REQUEST QFONT
REQUEST QGLYPHRUN
REQUEST QPOINTF
REQUEST QTEXTOPTION

CLASS QTextLayout

   DATA pointer
   DATA class_id INIT Class_Id_QTextLayout
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD beginLayout
   METHOD boundingRect
   METHOD cacheEnabled
   METHOD clearAdditionalFormats
   METHOD clearLayout
   METHOD createLine
   METHOD cursorMoveStyle
   METHOD drawCursor1
   METHOD drawCursor2
   METHOD drawCursor
   METHOD endLayout
   METHOD font
   METHOD glyphRuns
   METHOD isValidCursorPosition
   METHOD leftCursorPosition
   METHOD lineAt
   METHOD lineCount
   METHOD lineForTextPosition
   METHOD maximumWidth
   METHOD minimumWidth
   METHOD nextCursorPosition
   METHOD position
   METHOD preeditAreaPosition
   METHOD preeditAreaText
   METHOD previousCursorPosition
   METHOD rightCursorPosition
   METHOD setCacheEnabled
   METHOD setCursorMoveStyle
   METHOD setFont
   METHOD setPosition
   METHOD setPreeditArea
   METHOD setText
   METHOD setTextOption
   METHOD text
   METHOD textOption
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QTextLayout
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QTextLayout
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QTextLayout
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QTextLayout
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QTextLayout
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QTextLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

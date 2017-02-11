/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECTF
REQUEST QPOINTF
REQUEST QPAINTERPATH
REQUEST QPOLYGONF

CLASS QPainterPath

   DATA pointer
   DATA class_id INIT Class_Id_QPainterPath
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD addEllipse1
   METHOD addEllipse2
   METHOD addEllipse3
   METHOD addEllipse
   METHOD addPath
   METHOD addPolygon
   METHOD addRect1
   METHOD addRect2
   METHOD addRect
   METHOD addRegion
   METHOD addRoundedRect1
   METHOD addRoundedRect2
   METHOD addRoundedRect
   METHOD addText1
   METHOD addText2
   METHOD addText
   METHOD angleAtPercent
   METHOD arcMoveTo1
   METHOD arcMoveTo2
   METHOD arcMoveTo
   METHOD arcTo1
   METHOD arcTo2
   METHOD arcTo
   METHOD boundingRect
   METHOD closeSubpath
   METHOD connectPath
   METHOD contains1
   METHOD contains2
   METHOD contains3
   METHOD contains
   METHOD controlPointRect
   METHOD cubicTo1
   METHOD cubicTo2
   METHOD cubicTo
   METHOD currentPosition
   METHOD elementCount
   METHOD fillRule
   METHOD intersected
   METHOD intersects1
   METHOD intersects2
   METHOD intersects
   METHOD isEmpty
   METHOD length
   METHOD lineTo1
   METHOD lineTo2
   METHOD lineTo
   METHOD moveTo1
   METHOD moveTo2
   METHOD moveTo
   METHOD percentAtLength
   METHOD pointAtPercent
   METHOD quadTo1
   METHOD quadTo2
   METHOD quadTo
   METHOD setElementPositionAt
   METHOD setFillRule
   METHOD simplified
   METHOD slopeAtPercent
   METHOD subtracted
   METHOD swap
   METHOD toFillPolygon1
   METHOD toFillPolygon
   METHOD toFillPolygons1
   METHOD toFillPolygons
   METHOD toReversed
   METHOD toSubpathPolygons1
   METHOD toSubpathPolygons
   METHOD translate1
   METHOD translate2
   METHOD translate
   METHOD translated1
   METHOD translated2
   METHOD translated
   METHOD united
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QPainterPath
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QPainterPath
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QPainterPath
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QPainterPath
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QPainterPath
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QPainterPath
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

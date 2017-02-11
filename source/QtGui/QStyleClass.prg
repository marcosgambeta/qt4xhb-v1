/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPIXMAP
REQUEST QRECT
REQUEST QSTYLE
REQUEST QSIZE
REQUEST QICON
REQUEST QPALETTE
REQUEST QPOINT

CLASS QStyle INHERIT QObject

   DATA class_id INIT Class_Id_QStyle
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD combinedLayoutSpacing
   METHOD drawComplexControl
   METHOD drawControl
   METHOD drawItemPixmap
   METHOD drawItemText
   METHOD drawPrimitive
   METHOD generatedIconPixmap
   METHOD hitTestComplexControl
   METHOD itemPixmapRect
   METHOD itemTextRect
   METHOD layoutSpacing
   METHOD pixelMetric
   METHOD polish1
   METHOD polish2
   METHOD polish3
   METHOD polish
   METHOD proxy
   METHOD sizeFromContents
   METHOD standardIcon
   METHOD standardPalette
   METHOD styleHint
   METHOD subControlRect
   METHOD subElementRect
   METHOD unpolish1
   METHOD unpolish2
   METHOD unpolish
   METHOD alignedRect
   METHOD sliderPositionFromValue
   METHOD sliderValueFromPosition
   METHOD visualAlignment
   METHOD visualPos
   METHOD visualRect
   METHOD onCurrentChanged
   METHOD onTabCloseRequested
   METHOD onTabMoved
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

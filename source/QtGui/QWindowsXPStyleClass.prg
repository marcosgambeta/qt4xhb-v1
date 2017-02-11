/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIZE
REQUEST QPALETTE
REQUEST QPIXMAP
REQUEST QRECT

CLASS QWindowsXPStyle INHERIT QWindowsStyle

   DATA class_id INIT Class_Id_QWindowsXPStyle
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD drawComplexControl
   METHOD drawControl
   METHOD drawPrimitive
   METHOD pixelMetric
   METHOD polish1
   METHOD polish2
   METHOD polish3
   METHOD polish
   METHOD sizeFromContents
   METHOD standardPalette
   METHOD standardPixmap
   METHOD styleHint
   METHOD subControlRect
   METHOD subElementRect
   METHOD unpolish1
   METHOD unpolish2
   METHOD unpolish
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWindowsXPStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QCOLOR
REQUEST QPOINTF
REQUEST QRECTF

CLASS QGraphicsDropShadowEffect INHERIT QGraphicsEffect

   DATA class_id INIT Class_Id_QGraphicsDropShadowEffect
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD blurRadius
   METHOD color
   METHOD offset
   METHOD xOffset
   METHOD yOffset
   METHOD boundingRectFor
   METHOD setBlurRadius
   METHOD setColor
   METHOD setOffset1
   METHOD setOffset2
   METHOD setOffset3
   METHOD setOffset
   METHOD setXOffset
   METHOD setYOffset
   METHOD onBlurRadiusChanged
   METHOD onColorChanged
   METHOD onOffsetChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsDropShadowEffect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

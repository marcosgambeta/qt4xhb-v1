/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QGESTURE
REQUEST QPOINTF
REQUEST QWIDGET

CLASS QGestureEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QGestureEvent
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD accept1
   METHOD accept2
   METHOD accept3
   METHOD accept
   METHOD activeGestures
   METHOD canceledGestures
   METHOD gesture
   METHOD gestures
   METHOD ignore1
   METHOD ignore2
   METHOD ignore3
   METHOD ignore
   METHOD isAccepted1
   METHOD isAccepted2
   METHOD isAccepted3
   METHOD isAccepted
   METHOD mapToGraphicsScene
   METHOD setAccepted1
   METHOD setAccepted2
   METHOD setAccepted3
   METHOD setAccepted
   METHOD setWidget
   METHOD widget
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGestureEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

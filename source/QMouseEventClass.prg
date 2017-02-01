/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINT
REQUEST QPOINTF
REQUEST QMOUSEEVENT

CLASS QMouseEvent INHERIT QInputEvent

   DATA class_id INIT Class_Id_QMouseEvent
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD pos
   METHOD globalPos
   METHOD x
   METHOD y
   METHOD globalX
   METHOD globalY
   METHOD button
   METHOD buttons
   METHOD hasExtendedInfo
   METHOD posF
   METHOD createExtendedMouseEvent
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMouseEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

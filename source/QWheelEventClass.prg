/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINT

CLASS QWheelEvent INHERIT QInputEvent

   DATA class_id INIT Class_Id_QWheelEvent
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD delta
   METHOD pos
   METHOD globalPos
   METHOD x
   METHOD y
   METHOD globalX
   METHOD globalY
   METHOD buttons
   METHOD orientation
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWheelEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

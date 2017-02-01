/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECT
REQUEST QREGION

CLASS QPaintEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QPaintEvent
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD rect
   METHOD region
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPaintEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

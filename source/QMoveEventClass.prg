/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINT

CLASS QMoveEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QMoveEvent
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD oldPos
   METHOD pos
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMoveEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

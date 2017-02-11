/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINTF

CLASS QTapAndHoldGesture INHERIT QGesture

   DATA class_id INIT Class_Id_QTapAndHoldGesture
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD position
   METHOD setPosition
   METHOD setTimeout
   METHOD timeout
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTapAndHoldGesture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

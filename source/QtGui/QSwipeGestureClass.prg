/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QSwipeGesture INHERIT QGesture

   DATA class_id INIT Class_Id_QSwipeGesture
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD horizontalDirection
   METHOD setSwipeAngle
   METHOD swipeAngle
   METHOD verticalDirection
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSwipeGesture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

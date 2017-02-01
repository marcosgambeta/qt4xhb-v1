/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWIDGET

CLASS QGraphicsSceneEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QGraphicsSceneEvent
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD widget
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsSceneEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

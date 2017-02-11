/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECTF
REQUEST QPAINTERPATH

CLASS QGraphicsItemGroup INHERIT QGraphicsItem

   DATA class_id INIT Class_Id_QGraphicsItemGroup
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addToGroup
   METHOD removeFromGroup
   METHOD boundingRect
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD type
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsItemGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

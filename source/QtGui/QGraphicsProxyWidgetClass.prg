/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QGRAPHICSPROXYWIDGET
REQUEST QRECTF
REQUEST QWIDGET

CLASS QGraphicsProxyWidget INHERIT QGraphicsWidget

   DATA class_id INIT Class_Id_QGraphicsProxyWidget
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD createProxyForChildWidget
   METHOD setWidget
   METHOD subWidgetRect
   METHOD widget
   METHOD paint
   METHOD setGeometry
   METHOD type
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsProxyWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

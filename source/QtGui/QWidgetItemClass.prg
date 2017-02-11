/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECT
REQUEST QSIZE
REQUEST QWIDGET

CLASS QWidgetItem INHERIT QLayoutItem

   DATA class_id INIT Class_Id_QWidgetItem
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD expandingDirections
   METHOD geometry
   METHOD hasHeightForWidth
   METHOD heightForWidth
   METHOD isEmpty
   METHOD maximumSize
   METHOD minimumSize
   METHOD setGeometry
   METHOD sizeHint
   METHOD widget
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWidgetItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

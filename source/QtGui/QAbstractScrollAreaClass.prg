/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWIDGET
REQUEST QSCROLLBAR
REQUEST QSIZE

CLASS QAbstractScrollArea INHERIT QFrame

   DATA class_id INIT Class_Id_QAbstractScrollArea
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD addScrollBarWidget
   METHOD cornerWidget
   METHOD horizontalScrollBar
   METHOD horizontalScrollBarPolicy
   METHOD maximumViewportSize
   METHOD scrollBarWidgets
   METHOD setCornerWidget
   METHOD setHorizontalScrollBar
   METHOD setHorizontalScrollBarPolicy
   METHOD setVerticalScrollBar
   METHOD setVerticalScrollBarPolicy
   METHOD setViewport
   METHOD verticalScrollBar
   METHOD verticalScrollBarPolicy
   METHOD viewport
   METHOD minimumSizeHint
   METHOD sizeHint
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractScrollArea
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

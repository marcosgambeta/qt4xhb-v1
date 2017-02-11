/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWIDGET

CLASS QStackedLayout INHERIT QLayout

   DATA class_id INIT Class_Id_QStackedLayout
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD addWidget
   METHOD currentIndex
   METHOD currentWidget
   METHOD insertWidget
   METHOD setStackingMode
   METHOD stackingMode
   METHOD widget
   METHOD setCurrentIndex
   METHOD setCurrentWidget
   METHOD onSetCurrentIndex
   METHOD onSetCurrentWidget
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStackedLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

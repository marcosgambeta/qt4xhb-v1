/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECT
REQUEST QWIDGET

CLASS QDesktopWidget INHERIT QWidget

   DATA class_id INIT Class_Id_QDesktopWidget
   DATA self_destruction INIT .f.

   METHOD availableGeometry1
   METHOD availableGeometry2
   METHOD availableGeometry3
   METHOD availableGeometry
   METHOD isVirtualDesktop
   METHOD primaryScreen
   METHOD screen
   METHOD screenCount
   METHOD screenGeometry1
   METHOD screenGeometry2
   METHOD screenGeometry3
   METHOD screenGeometry
   METHOD screenNumber1
   METHOD screenNumber2
   METHOD screenNumber
   METHOD onResized
   METHOD onScreenCountChanged
   METHOD onWorkAreaResized
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesktopWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWIDGET
REQUEST QBRUSH
REQUEST QSIZE

CLASS QWorkspace INHERIT QWidget

   DATA class_id INIT Class_Id_QWorkspace
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD activeWindow
   METHOD addWindow
   METHOD background
   METHOD scrollBarsEnabled
   METHOD setBackground
   METHOD setScrollBarsEnabled
   METHOD windowList
   METHOD sizeHint
   METHOD activateNextWindow
   METHOD activatePreviousWindow
   METHOD arrangeIcons
   METHOD cascade
   METHOD closeActiveWindow
   METHOD closeAllWindows
   METHOD setActiveWindow
   METHOD tile
   METHOD onWindowActivated
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWorkspace
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

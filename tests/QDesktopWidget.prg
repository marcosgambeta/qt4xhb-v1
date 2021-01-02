/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "qt4xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oDesktopWidget

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )
   oWindow:show()

   oDesktopWidget := QApplication():desktop()
   ? oDesktopWidget:isVirtualDesktop()
   ? oDesktopWidget:primaryScreen()
   ? oDesktopWidget:screenCount()
   ? oDesktopWidget:screenNumber( oWindow )

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

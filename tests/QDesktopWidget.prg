/*

  Qt4xHb Project - Test Program

  Copyright (c) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt4xhb

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

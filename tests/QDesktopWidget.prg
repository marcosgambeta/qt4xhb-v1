//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oDesktopWidget

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   // get the object QDesktopWidget
   oDesktopWidget := QApplication():desktop()
   // show info about the desktop
   ? oDesktopWidget:isVirtualDesktop()
   ? oDesktopWidget:primaryScreen()
   ? oDesktopWidget:screenCount()
   ? oDesktopWidget:screenNumber(oWindow)

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

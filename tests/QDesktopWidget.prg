//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oDesktopWidget

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)
   oWindow:show()

   oDesktopWidget := QApplication():desktop()
   ? oDesktopWidget:isVirtualDesktop()
   ? oDesktopWidget:primaryScreen()
   ? oDesktopWidget:screenCount()
   ? oDesktopWidget:screenNumber(oWindow)

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

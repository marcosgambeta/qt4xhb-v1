//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()

   // create button
   oButton := QPushButton():new("Click here", oWindow)
   oButton:move(20, 20)
   oButton:onClicked({||qout("clicked")})
   oButton:onPressed({||qout("pressed")})
   oButton:onReleased({||qout("released")})

   // show window
   oWindow:show()

   // start event loop
   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

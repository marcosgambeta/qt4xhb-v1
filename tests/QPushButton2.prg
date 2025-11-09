//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton1
   LOCAL oButton2

   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:resize(320, 240)

   // create button 1
   oButton1 := QPushButton():new("PushButton 1", oWindow)
   oButton1:move(20, 20)
   oButton1:onClicked({||qout("clicked-1")})
   oButton1:onPressed({||qout("pressed-1")})
   oButton1:onReleased({||qout("released-1")})

   // create button 2
   oButton2 := QPushButton():new("PushButton 2", oWindow)
   oButton2:move(20, 70)
   oButton2:onClicked({||qout("clicked-2")})
   oButton2:onPressed({||qout("pressed-2")})
   oButton2:onReleased({||qout("released-2")})

   // show window
   oWindow:show()

   // start event loop
   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton1
   LOCAL oButton2

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(320, 240)

   oButton1 := QPushButton():new("PushButton 1", oWindow)
   oButton1:move(20, 20)
   oButton1:onClicked({||QOut("clicked-1")})
   oButton1:onPressed({||QOut("pressed-1")})
   oButton1:onReleased({||QOut("released-1")})

   oButton2 := QPushButton():new("PushButton 2", oWindow)
   oButton2:move(20, 70)
   oButton2:onClicked({||QOut("clicked-2")})
   oButton2:onPressed({||QOut("pressed-2")})
   oButton2:onReleased({||QOut("released-2")})

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

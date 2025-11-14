//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oTimeEdit

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Test with QTimeEdit class")
   oWindow:resize(640, 480)

   oTimeEdit := QTimeEdit():new(oWindow)
   oTimeEdit:move(20, 20)
   oTimeEdit:setTooltip("I am a QTimeEdit object")

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

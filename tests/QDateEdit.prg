//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oDateEdit

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Test with QDateEdit class")
   oWindow:resize(640, 480)

   // create the object QDateEdit
   oDateEdit := QDateEdit():new(oWindow)
   oDateEdit:move(20, 20)
   oDateEdit:setTooltip("I am a QDateEdit object")

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

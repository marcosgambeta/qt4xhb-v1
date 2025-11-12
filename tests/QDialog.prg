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

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:resize(640, 480)

   // create button
   oButton := QPushButton():new("Show dialog window", oWindow)
   oButton:move(20, 20)
   oButton:onClicked({||ShowDialog()})

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

STATIC FUNCTION ShowDialog()

   LOCAL oDialog

   // create dialog window
   oDialog := QDialog():new()

   // execute dialog window
   oDialog:exec()

   // delete dialog window
   oDialog:delete()

RETURN NIL

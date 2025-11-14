//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QMainWindow():new()
   oWindow:setWindowTitle("Test with QMainWindow class")
   oWindow:resize(640, 480)

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

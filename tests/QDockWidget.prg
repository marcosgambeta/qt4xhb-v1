//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oMainWindow
   LOCAL oDockWidget

   // create application
   oApp := QApplication():new()

   // create window
   oMainWindow := QMainWindow():new()
   oMainWindow:setWindowTitle("Test with QDockWidget class")

   oDockWidget := QDockWidget():new("QDockWidget", oMainWindow)

   // show window
   oMainWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oMainWindow:delete()
   oApp:delete()

RETURN NIL

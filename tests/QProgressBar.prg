//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oProgressBar

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Test with QProgressBar class")
   oWindow:resize(640, 480)

   oProgressBar := QProgressBar():new(oWindow)
   oProgressBar:move(20, 20)
   oProgressBar:setTooltip("I am a QProgressBar object")
   oProgressBar:setValue(50)

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

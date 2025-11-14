//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oDoubleSpinBox

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Test with QDoubleSpinBox class")
   oWindow:resize(640, 480)

   oDoubleSpinBox := QDoubleSpinBox():new(oWindow)
   oDoubleSpinBox:move(20, 20)
   oDoubleSpinBox:setTooltip("I am a QDoubleSpinBox object")

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

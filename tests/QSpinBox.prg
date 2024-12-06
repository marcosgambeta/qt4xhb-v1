//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oSpinBox

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)
   oWindow:show()

   oSpinBox := QSpinBox():new(oWindow)
   oSpinBox:move(20, 20)
   oSpinBox:setTooltip("Eu sou um SpinBox")
   oSpinBox:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

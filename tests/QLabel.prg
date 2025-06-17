//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLabel

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)
   oWindow:show()

   oLabel := QLabel():new("Label", oWindow)
   oLabel:move(20, 20)
   oLabel:setTooltip("Eu sou um Label")
   oLabel:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

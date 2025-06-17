//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLCDNumber

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)
   oWindow:show()

   oLCDNumber := QLCDNumber():new(oWindow)
   oLCDNumber:move(20, 20)
   oLCDNumber:setTooltip("Eu sou um LCDNumber")
   oLCDNumber:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

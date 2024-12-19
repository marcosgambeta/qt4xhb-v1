//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oScrollBar

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)
   oWindow:show()

   oScrollBar := QScrollBar():new(oWindow)
   oScrollBar:move(20, 20)
   oScrollBar:resize(20, 400)
   oScrollBar:setTooltip("Eu sou um ScrollBar")
   oScrollBar:onSliderMoved({|oSender, nValue|test(oSender, nValue)})
   oScrollBar:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

STATIC FUNCTION test(oSender, nValue)

   QOut("slider moved")
   QOut(oSender)
   QOut(nValue)

RETURN NIL

//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oSlider

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)
   oWindow:show()

   oSlider := QSlider():new(oWindow)
   oSlider:move(20, 20)
   oSlider:resize(20, 400)
   oSlider:setTooltip("Eu sou um Slider")
   oSlider:onSliderMoved({|oSender, nValue|test(oSender, nValue)})
   oSlider:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

STATIC FUNCTION test(oSender, nValue)

   QOut("slider moved")
   QOut(oSender)
   QOut(nValue)

RETURN NIL

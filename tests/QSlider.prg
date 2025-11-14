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

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Test with QSlider class")
   oWindow:resize(640, 480)

   oSlider := QSlider():new(oWindow)
   oSlider:move(20, 20)
   oSlider:resize(20, 400)
   oSlider:setTooltip("I am a QSlider object")
   oSlider:onSliderMoved({|oSender, nValue|test(oSender, nValue)})

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

STATIC FUNCTION test(oSender, nValue)

   qout("slider moved")
   qout(oSender)
   qout(nValue)

RETURN NIL

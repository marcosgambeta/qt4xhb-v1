//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oDial

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   // create the object QDial
   oDial := QDial():new(oWindow)
   oDial:move(20, 20)
   oDial:setTooltip("I am a Dial")
   oDial:onSliderMoved({|oSender, nValue|test(oSender, nValue)})

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

STATIC FUNCTION test(oWidget, nValue)

   qout("slider moved")
   qout(oWidget)
   qout(nValue)

RETURN NIL

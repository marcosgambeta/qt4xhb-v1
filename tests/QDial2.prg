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

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)
   oWindow:show()

   oDial := QDial():new(oWindow)
   oDial:move(20, 20)
   oDial:setTooltip("Eu sou um Dial")
   oDial:onActionTriggered({|oSender, nAction|test(oSender, nAction)})
   oDial:onSliderPressed({|oSender|test2(oSender)})
   oDial:onSliderReleased({|oSender|test3(oSender)})
   oDial:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

STATIC FUNCTION test(oSender, nAction)

   qout("action triggered")
   qout(oSender)
   qout(nAction)

RETURN NIL

STATIC FUNCTION test2(oSender)

   qout("slider pressed")
   qout(oSender)

RETURN NIL

STATIC FUNCTION test3(oSender)

   qout("slider released")
   qout(oSender)

RETURN NIL

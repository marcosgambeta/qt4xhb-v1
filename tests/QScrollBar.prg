/*

  Qt4xHb Project - Test Program

  Copyright (c) 2024 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt4xhb

*/

#include "qt4xhb.ch"

PROCEDURE Main()

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

RETURN

STATIC FUNCTION test(oSender, nValue)

   qout("slider moved")
   qout(oSender)
   qout(nValue)

RETURN NIL

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
   LOCAL oTimeEdit

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)
   oWindow:show()

   oTimeEdit := QTimeEdit():new(oWindow)
   oTimeEdit:move(20, 20)
   oTimeEdit:setTooltip("Eu sou um TimeEdit")
   oTimeEdit:show()

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN

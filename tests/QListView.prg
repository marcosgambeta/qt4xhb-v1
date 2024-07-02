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
   LOCAL oListView
   LOCAL oSLM

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)
   oWindow:show()

   oListView := QListView():new(oWindow)
   oListView:move(20, 20)
   oListView:setTooltip("Eu sou um ListView")
   oListView:show()

   oSLM := QStringListModel():new({"um", "dois", "três", "quatro", "cinco", "seis"})

   oListView:setModel(oSLM)

   oApp:exec()

   oSLM:delete()

   oWindow:delete()

   oApp:delete()

RETURN

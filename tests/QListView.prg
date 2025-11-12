//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oListView
   LOCAL oSLM

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640, 480)

   oListView := QListView():new(oWindow)
   oListView:move(20, 20)
   oListView:setTooltip("Eu sou um ListView")

   oSLM := QStringListModel():new({"um", "dois", "três", "quatro", "cinco", "seis"})

   oListView:setModel(oSLM)

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oSLM:delete()
   oWindow:delete()
   oApp:delete()

RETURN NIL

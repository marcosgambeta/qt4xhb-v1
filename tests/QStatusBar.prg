//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt4xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oMainWindow
   LOCAL oStatusBar

   oApp := QApplication():new()

   oMainWindow := QMainWindow():new()

   oStatusBar := oMainWindow:statusBar()
   oStatusBar:showMessage("teste")

   oMainWindow:show()

   oApp:exec()

   oMainWindow:delete()

   oApp:delete()

RETURN

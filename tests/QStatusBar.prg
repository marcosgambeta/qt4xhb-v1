/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "qt4xhb.ch"

PROCEDURE Main()

   lOCAL oApp
   LOCAL oMainWindow
   LOCAL oStatusBar

   oApp := QApplication():new()

   oMainWindow := QMainWindow():new()

   oStatusBar := oMainWindow:statusBar()

   oStatusBar:showMessage( "teste" )

   oMainWindow:show()

   oApp:exec()

   oMainWindow:delete()

   oApp:delete()

RETURN

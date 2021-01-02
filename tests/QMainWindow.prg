/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "qt4xhb.ch"

PROCEDURE Main()

   lOCAL oApp
   LOCAL oWindow

   oApp := QApplication():new()

   oWindow := QMainWindow():new()

   oWindow:setWindowTitle( "Teste" )

   oWindow:resize( 640, 480 )

   oWindow:show()

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN

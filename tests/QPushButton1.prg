/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "qt4xhb.ch"

PROCEDURE Main()

   lOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oButton := QPushButton():new( "Clique aqui", oWindow )
   oButton:move( 20, 20 )
   oButton:onClicked( {||qout("clicked")} )
   oButton:onPressed( {||qout("pressed")} )
   oButton:onReleased ({||qout("released")} )

   oWindow:show()

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN

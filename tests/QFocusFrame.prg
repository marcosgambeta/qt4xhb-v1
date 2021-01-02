/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "qt4xhb.ch"

PROCEDURE Main()

   lOCAL oApp
   LOCAL oWindow
   LOCAL oLabel
   LOCAL oFocusFrame

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oLabel := QLabel():new( "QLabel", oWindow )
   oLabel:move( 20, 20 )

   oFocusFrame := QFocusFrame():new()
   oFocusFrame:setWidget( oLabel )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

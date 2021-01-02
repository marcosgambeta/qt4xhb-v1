/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "qt4xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize( 640, 480 )
   oWindow:show()

   oButton := QPushButton():new( "Mostrar janela de diálogo", oWindow )
   oButton:move( 20, 20 )
   oButton:show()
   oButton:onClicked( {||ShowDialog()} )

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION ShowDialog()

   LOCAL oDialog := QDialog():new()

   oDialog:exec()

   oDialog:delete()

RETURN NIL

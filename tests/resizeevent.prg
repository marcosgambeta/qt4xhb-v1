/*

  Qt4xHb Project - Test Program

  Copyright (C) 2020 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt4xhb

*/

#include "qt4xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLabelWidth
   LOCAL oLabelHeight

   oApp := QApplication():new()

   oWindow := QWidget():new():setWindowTitle( "Teste do evento resize" ):resize( 640, 480 )

   oLabelWidth := QLabel():new( "0", oWindow ):move( 20, 20 ):resize( 100, 30 )
   oLabelHeight := QLabel():new( "0", oWindow ):move( 20, 80 ):resize( 100, 30 )

   oWindow:onResizeEvent( {|oSender,oResizeEvent|
      oLabelWidth:setText( alltrim( str( oResizeEvent:size():width() ) ) )
      oLabelHeight:setText( alltrim( str( oResizeEvent:size():height() ) ) )
      } )

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

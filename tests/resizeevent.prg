/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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

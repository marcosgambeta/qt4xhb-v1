/*

  Qt4xHb Project - Test Program

  Copyright (C) 2021 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/marcosgambeta/qt4xhb

*/

#include "qt4xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oDial

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )
   oWindow:show()

   oDial := QDial():new( oWindow )
   oDial:move( 20, 20 )
   oDial:setTooltip( "Eu sou um Dial" )
   oDial:onSliderMoved( {|oSender,nValue|test(oSender,nValue)} )
   oDial:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION test( oWidget, nValue )

   qout( "slider moved" )
   qout( oWidget )
   qout( nValue )

RETURN NIL

/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "qt4xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oCal

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )
   oWindow:show()

   oCal := QCalendarWidget():new( oWindow )
   oCal:move( 20, 20 )
   oCal:setTooltip( "Eu sou um CalendarWidget" )
   oCal:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

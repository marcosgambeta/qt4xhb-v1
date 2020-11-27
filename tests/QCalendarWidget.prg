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

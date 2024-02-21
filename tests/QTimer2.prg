/*

  Qt4xHb Project - Test Program

  Copyright (c) 2024 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt4xhb

*/

#include "qt4xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oTimer1
   LOCAL oTimer2

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )

   oWindow:show()

   oTimer1 := QTimer():new( oWindow )
   ? oTimer1:onTimeout( { || qout( "timer 1 executado" ) } )
   oTimer1:setInterval( 1000 )
   oTimer1:start()

   oTimer2 := QTimer():new( oWindow )
   ? oTimer2:onTimeout( { || qout( "timer 2 executado" ) } )
   oTimer2:setInterval( 2000 )
   oTimer2:start()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

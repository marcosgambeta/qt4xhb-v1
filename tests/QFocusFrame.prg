/*

  Qt4xHb Project - Test Program

  Copyright (c) 2023 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt4xhb

*/

#include "qt4xhb.ch"

PROCEDURE Main()

   LOCAL oApp
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

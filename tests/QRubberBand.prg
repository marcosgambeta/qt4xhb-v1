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
   LOCAL oRubberBand

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oRubberBand := QRubberBand():new( QRubberBand_Rectangle, oWindow )
   oRubberBand:move( 20, 20 )
   oRubberBand:resize( 100, 100 )
   oRubberBand:show()

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

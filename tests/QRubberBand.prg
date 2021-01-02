/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "qt4xhb.ch"

PROCEDURE Main()

   lOCAL oApp
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

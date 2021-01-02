/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "qt4xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

PROCEDURE Main()

   LOCAL oApp
   LOCAL aColorsNames
   LOCAL nIndex

   oApp := QApplication():new()

   aColorsNames := QColor():colorNames()

   ? valtype( aColorsNames )

   ? len( aColorsNames )

   FOR nIndex := 1 TO len( aColorsNames )
      ? nIndex
      ?? " = "
      ?? aColorsNames[ nIndex ]
   NEXT nIndex

   WAIT

   oApp:delete()

RETURN

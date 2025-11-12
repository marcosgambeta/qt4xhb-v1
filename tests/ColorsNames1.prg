//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

FUNCTION Main()

   LOCAL oApp
   LOCAL aColorsNames
   LOCAL nIndex

   // create application
   oApp := QApplication():new()

   aColorsNames := QColor():colorNames()

   ? valtype(aColorsNames)

   ? len(aColorsNames)

   FOR nIndex := 1 TO len(aColorsNames)
      ? nIndex
      ?? " = "
      ?? aColorsNames[nIndex]
   NEXT nIndex

   WAIT

   // delete objects
   oApp:delete()

RETURN NIL

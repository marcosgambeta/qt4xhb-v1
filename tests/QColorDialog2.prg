//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(640, 480)
   oWindow:show()

   oButton := QPushButton():new("Mostrar janela de diálogo", oWindow)
   oButton:move(20, 20)
   oButton:show()
   oButton:onClicked({||ShowColorDialog(oWindow)})

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

STATIC FUNCTION ShowColorDialog(oWindow)

   LOCAL oColorDialog

   oColorDialog := QColorDialog():new(oWindow)

   oColorDialog:onColorSelected({|oSender, oColor|ShowColorSelected(oColor)})

   oColorDialog:exec()

   oColorDialog:delete()

RETURN NIL

STATIC FUNCTION ShowColorSelected(oColor)

   ? "name=", oColor:name()
   ? "red=", oColor:red()
   ? "green=", oColor:green()
   ? "blue=", oColor:blue()
   ? "rgb=", oColor:rgb()
   ?

RETURN NIL

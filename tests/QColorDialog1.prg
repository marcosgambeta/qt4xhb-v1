//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

   oButton := QPushButton():new("Mostrar janela de di�logo", oWindow)
   oButton:move(20, 20)
   oButton:show()
   oButton:onClicked({||ShowColorDialog(oWindow)})

   oApp:exec()
   
   oWindow:delete()

   oApp:delete()

RETURN NIL

STATIC FUNCTION ShowColorDialog(oWindow)

   LOCAL oColorDialog := QColorDialog():new(oWindow)

   oColorDialog:exec()

   oColorDialog:delete()

RETURN NIL

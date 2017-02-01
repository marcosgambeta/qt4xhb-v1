/*

  Exemplo do projeto Qt4xHb

  (C) 2012-2017 Marcos Antonio Gambeta

  E-mail: marcosgambeta@uol.com.br

  Website: https://github.com/marcosgambeta

*/

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:resize(640,480)
   oWindow:show()

   oButton := QPushButton():new("Mostrar janela de diálogo",oWindow)
   oButton:move(20,20)
   oButton:show()
   oButton:onClicked({|w|dialog(oWindow)})

   oApp:exec()
   
   oWindow:delete()

   oApp:delete()

RETURN

STATIC FUNCTION dialog (oWindow)

   LOCAL oProgressDialog

   oProgressDialog := QProgressDialog():new(oWindow)

   oProgressDialog:exec()

   oProgressDialog:delete()

RETURN NIL

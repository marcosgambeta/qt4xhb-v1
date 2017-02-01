/*

  Exemplo do projeto Qt4xHb

  (C) 2012-2017 Marcos Antonio Gambeta

  E-mail: marcosgambeta@uol.com.br

  Website: https://github.com/marcosgambeta

*/

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oFontComboBox

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640,480)
   oWindow:show()

   oFontComboBox := QFontComboBox():new(oWindow)
   oFontComboBox:move(20,20)
   oFontComboBox:setTooltip("Eu sou um FontComboBox")
   oFontComboBox:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

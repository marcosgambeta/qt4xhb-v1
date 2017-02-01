/*

  Exemplo do projeto Qt4xHb

  (C) 2012-2017 Marcos Antonio Gambeta

  E-mail: marcosgambeta@uol.com.br

  Website: https://github.com/marcosgambeta

*/

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLabel

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640,480)
   oWindow:show()

   oLabel := QLabel():new("Label",oWindow)
   oLabel:move(20,20)
   oLabel:setTooltip("Eu sou um Label")
   oLabel:show()

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN

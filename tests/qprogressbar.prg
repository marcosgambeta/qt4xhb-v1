/*

  Exemplo do projeto Qt4xHb

  (C) 2012-2017 Marcos Antonio Gambeta

  E-mail: marcosgambeta@uol.com.br

  Website: https://github.com/marcosgambeta

*/

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oProgressBar

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640,480)
   oWindow:show()

   oProgressBar := QProgressBar():new(oWindow)
   oProgressBar:move(20,20)
   oProgressBar:setTooltip("Eu sou um ProgressBar")
   oProgressBar:setValue(50)
   oProgressBar:show()

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN

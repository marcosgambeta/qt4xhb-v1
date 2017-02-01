/*

  Exemplo do projeto Qt4xHb

  (C) 2012-2017 Marcos Antonio Gambeta

  E-mail: marcosgambeta@uol.com.br

  Website: https://github.com/marcosgambeta

*/

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oListView
   LOCAL oSLM

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(640,480)
   oWindow:show()

   oListView := QListView():new(oWindow)
   oListView:move(20,20)
   oListView:setTooltip("Eu sou um ListView")
   oListView:show()

   oSLM := QStringListModel():new({"um","dois","três","quatro","cinco","seis"})

   oListView:setModel(oSLM)

   oApp:exec()
   
   oSLM:delete()

   oWindow:delete()

   oApp:delete()

RETURN

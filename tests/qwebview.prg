/*

  Exemplo do projeto Qt4xHb

  (C) 2012-2017 Marcos Antonio Gambeta

  E-mail: marcosgambeta@uol.com.br

  Website: https://github.com/marcosgambeta

*/

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oWebView

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste da classe QWebView")
   oWindow:resize(800,600)
   oWindow:show()

   oWebView := QWebView():new(oWindow)
   oWebView:setUrl(QUrl():new("https://github.com/marcosgambeta"))
   oWebView:show()

   oApp:exec()
   
   oWindow:delete()
   
   oApp:delete()

RETURN

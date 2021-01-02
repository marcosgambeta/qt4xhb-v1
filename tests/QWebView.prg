/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "qt4xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oWebView

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste da classe QWebView" )
   oWindow:resize( 800, 600 )
   oWindow:show()

   oWebView := QWebView():new( oWindow )
   oWebView:setUrl(QUrl():new( "https://github.com/marcosgambeta") )
   oWebView:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

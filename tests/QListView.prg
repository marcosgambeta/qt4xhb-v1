/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "qt4xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oListView
   LOCAL oSLM

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )
   oWindow:show()

   oListView := QListView():new( oWindow )
   oListView:move( 20, 20 )
   oListView:setTooltip( "Eu sou um ListView" )
   oListView:show()

   oSLM := QStringListModel():new( { "um", "dois", "três", "quatro", "cinco", "seis" } )

   oListView:setModel( oSLM )

   oApp:exec()

   oSLM:delete()

   oWindow:delete()

   oApp:delete()

RETURN

/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "qt4xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oList

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste com a classe HAbstractListModel" )
   oWindow:resize( 400, 600 )

   oModel := HAbstractListModel():new()
   oModel:setRowCountCB( {||100000} ) // total de linhas: 100 mil
   oModel:setDisplayRoleCB( {|nRow|"Linha "+alltrim(str(nRow))} )

   oList := QListView():new( oWindow )
   oList:move( 10, 10 )
   oList:resize( 400 - 20, 600 - 20 )
   oList:setModel( oModel )

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN

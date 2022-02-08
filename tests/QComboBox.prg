/*

  Qt4xHb Project - Test Program

  Copyright (C) 2022 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt4xhb

*/

#include "qt4xhb.ch"

PROCEDURE Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oComboBox

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Teste" )
   oWindow:resize( 640, 480 )
   oWindow:show()

   oComboBox := QComboBox():new( oWindow )
   oComboBox:move( 20, 20 )
   oComboBox:setTooltip( "Eu sou um ComboBox" )
   oComboBox:show()

   oComboBox:addItem( "Item 1" )
   oComboBox:addItem( "Item 2" )
   oComboBox:addItem( "Item 3" )
   oComboBox:addItem( "Item 4" )
   oComboBox:addItem( "Item 5" )

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oComboBox

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Test with QComboBox class")
   oWindow:resize(640, 480)

   // create combobox
   oComboBox := QComboBox():new(oWindow)
   oComboBox:move(20, 20)
   oComboBox:setTooltip("I am a QComboBox object")

   // add items to combobox
   oComboBox:addItem("Item 1")
   oComboBox:addItem("Item 2")
   oComboBox:addItem("Item 3")
   oComboBox:addItem("Item 4")
   oComboBox:addItem("Item 5")

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

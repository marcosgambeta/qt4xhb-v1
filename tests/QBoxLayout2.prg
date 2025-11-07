//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oButton3
   LOCAL oButton4
   LOCAL oButton5
   LOCAL oLayout

   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()

   // create five buttons
   oButton1 := QPushButton():new("One")
   oButton2 := QPushButton():new("Two")
   oButton3 := QPushButton():new("Three")
   oButton4 := QPushButton():new("Four")
   oButton5 := QPushButton():new("Five")

   // create layout (horizontal box)
   oLayout := QBoxLayout():new(QBoxLayout_RightToLeft)

   // add buttons to layout
   oLayout:addWidget(oButton1)
   oLayout:addWidget(oButton2)
   oLayout:addWidget(oButton3)
   oLayout:addWidget(oButton4)
   oLayout:addWidget(oButton5)

   // add layout to window
   oWindow:setLayout(oLayout)

   // show window
   oWindow:show()

   // start event loop
   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

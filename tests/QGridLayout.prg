//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLabelField1
   LOCAL oLabelField2
   LOCAL oLabelField3
   LOCAL oLabelField4
   LOCAL oLabelField5
   LOCAL oEditField1
   LOCAL oEditField2
   LOCAL oEditField3
   LOCAL oEditField4
   LOCAL oEditField5
   LOCAL oLayout

   oApp := QApplication():new()

   oWindow := QWidget():new()

   oLabelField1 := QLabel():new("Field 1")
   oLabelField2 := QLabel():new("Field 2")
   oLabelField3 := QLabel():new("Field 3")
   oLabelField4 := QLabel():new("Field 4")
   oLabelField5 := QLabel():new("Field 5")

   oEditField1 := QLineEdit():new("")
   oEditField2 := QLineEdit():new("")
   oEditField3 := QLineEdit():new("")
   oEditField4 := QLineEdit():new("")
   oEditField5 := QLineEdit():new("")

   oLayout := QGridLayout():new()

   oLayout:addWidget(oLabelField1, 0, 0, 0)
   oLayout:addWidget(oEditField1, 1, 0, 0)

   oLayout:addWidget(oLabelField2, 0, 1, 0)
   oLayout:addWidget(oEditField2, 1, 1, 0)

   oLayout:addWidget(oLabelField3, 2, 0, 0)
   oLayout:addWidget(oEditField3, 3, 0, 0)

   oLayout:addWidget(oLabelField4, 2, 1, 0)
   oLayout:addWidget(oEditField4, 3, 1, 0)

   oLayout:addWidget(oLabelField5, 4, 0, 0)
   oLayout:addWidget(oEditField5, 5, 0, 0)

   oWindow:setLayout(oLayout)

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

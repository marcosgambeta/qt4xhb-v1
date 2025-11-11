//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oList

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Test with HAbstractListModel class")
   oWindow:resize(400, 600)

   // create model
   oModel := HAbstractListModel():new()
   // row count: 100.000
   oModel:setRowCountCB({||100000})
   oModel:setDisplayRoleCB({|nRow|"Row " + alltrim(str(nRow))})

   // create view
   oList := QListView():new(oWindow)
   oList:move(10, 10)
   oList:resize(400 - 20, 600 - 20)
   oList:setModel(oModel)

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oModel:delete()
   oWindow:delete()
   oApp:delete()

RETURN NIL

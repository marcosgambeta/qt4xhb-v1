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
   LOCAL oView

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Test with HAbstractTableModel class")
   oWindow:resize(800, 600)

   // create model
   oModel := HAbstractTableModel():new()
   // total de linhas
   oModel:setRowCountCB({||100})
   // total de colunas
   oModel:setColumnCountCB({||10})
   // conteúdo da célula
   oModel:setCB(Qt_DisplayRole, {|nRow, nCol|"Cell " + alltrim(str(nRow)) + "," + alltrim(str(nCol))})
   // títulos das colunas
   oModel:setHorizontalHeaderCB(Qt_DisplayRole, {|nCol|"Column " + strzero(nCol, 2)})
   // títulos das linhas
   oModel:setVerticalHeaderCB(Qt_DisplayRole, {|nRow|"Row " + alltrim(str(nRow))})

   // create view
   oView := QTableView():new(oWindow)
   oView:move(10, 10)
   oView:resize(800 - 20, 600 - 20)
   oView:setModel(oModel)

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oModel:delete()
   oWindow:delete()
   oApp:delete()

RETURN NIL

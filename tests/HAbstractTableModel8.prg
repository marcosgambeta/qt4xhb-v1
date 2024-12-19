//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(800, 600)

   oModel := HAbstractTableModel():new()
   oModel:setRowCountCB({||1000000}) // total de linhas
   oModel:setColumnCountCB({||10000}) // total de colunas
   oModel:setDisplayRoleCB({|nRow, nCol|"C�lula " + AllTrim(Str(nRow)) + "," + AllTrim(Str(nCol))}) // conte�do da c�lula
   oModel:setForegroundRoleCB({|nRow, nCol|IIf(nRow / 2 == Int(nRow / 2), "blue", "dark green")}) // cor de frente da c�lula
   oModel:setHorizontalHeaderDisplayRoleCB({|nCol|"Coluna " + StrZero(nCol, 5)}) // t�tulos das colunas
   oModel:setVerticalHeaderDisplayRoleCB({|nRow|"Linha " + AllTrim(Str(nRow))}) // t�tulos das linhas

   oView := QTableView():new(oWindow)
   oView:move(10, 10)
   oView:resize(800 - 20, 600 - 20)
   oView:setModel(oModel)

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN NIL

//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL aColorsNames
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView

   oApp := QApplication():new()

   aColorsNames := QColor():colorNames()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Tabela de cores")
   oWindow:resize(800, 600)

   oModel := HAbstractTableModel():new()
   oModel:setRowCountCB({||len(aColorsNames)}) // total de linhas
   oModel:setColumnCountCB({||2}) // total de colunas
   oModel:setDisplayRoleCB({|nRow, nCol|{aColorsNames[nRow + 1], NIL}[nCol + 1]}) // conte�do da c�lula
   oModel:setFontRoleCB({|nRow, nCol|iif(nCol == 0, QFont():new("Arial Black", 12), NIL)}) // fonte da c�lula
   oModel:setBackgroundRoleCB({|nRow, nCol|iif(nCol == 0, NIL, aColorsNames[nRow + 1])}) // cor de fundo da c�lula
   oModel:setHorizontalHeaderDisplayRoleCB({|nCol|{"Nome", "Cor"}[nCol + 1]}) // t�tulos das colunas
   oModel:setVerticalHeaderDisplayRoleCB({|nRow|alltrim(str(nRow + 1))}) // t�tulos das linhas

   oView := QTableView():new(oWindow)
   oView:move(10, 10)
   oView:resize(800 - 20, 600 - 20)
   oView:setModel(oModel)
   oView:resizeColumnToContents(0) // ajusta a largura da coluna que exibe o nome da cor
   oView:horizontalHeader():setStretchLastSection(.T.) // ajusta a largura da coluna que exibe a cor

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN NIL

//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

#define NUMR_ROWS 100

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oModel
   LOCAL oView
   LOCAL nRow
   LOCAL aData

   aData := Array(NUMR_ROWS)
   FOR nRow := 1 TO NUMR_ROWS
      aData[nRow] := {"Linha " + AllTrim(Str(nRow)), Qt_Checked}
   NEXT nRow

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle("Teste")
   oWindow:resize(800, 600)

   oModel := HAbstractListModel():new()
   // total de linhas
   oModel:setRowCountCB({||NUMR_ROWS})
   // conte�do da linha
   oModel:setDisplayRoleCB({|nRow|aData[nRow + 1][1]})
   // conte�do para edi��o da linha
   oModel:setEditRoleCB({|nRow|aData[nRow + 1][1]})
   // checked/unchecked
   oModel:setCheckStateRoleCB({|nRow|aData[nRow + 1][2]})
   // flags
   oModel:setFlagsCB({||Qt_ItemIsSelectable + Qt_ItemIsEditable + Qt_ItemIsEnabled + Qt_ItemIsUserCheckable})
   oModel:setSetDataCB({|nRow, oVariant, nRole|
      IF nRole == Qt_EditRole
         aData[nRow + 1, 1] := oVariant:toString()
         RETURN .T.
      ENDIF
      IF nRole == Qt_CheckStateRole
         aData[nRow + 1, 2] := Val(oVariant:toString())
         RETURN .T.
      ENDIF
      }) // grava conte�do da linha se n�o for vazio

   oView := QListView():new(oWindow)
   oView:move(10, 10)
   oView:resize(800 - 20, 600 - 20)
   oView:setModel(oModel)

   oWindow:show()

   oApp:exec()

   oModel:delete()

   oWindow:delete()

   oApp:delete()

RETURN NIL

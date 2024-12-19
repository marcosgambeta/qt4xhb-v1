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

   oModel := myModel():new()

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

#include "hbclass.ch"

CLASS myModel INHERIT HAbstractTableModelV2

   METHOD new
   METHOD rowCount
   METHOD columnCount
   METHOD data
   METHOD headerData

END CLASS

METHOD new(...) CLASS myModel

   ::super:new(...)

   ::setRowCountCB({|...|::rowCount(...)})
   ::setColumnCountCB({|...|::columnCount(...)})
   ::setDataCB({|...|::data(...)})
   ::setHeaderDataCB({|...|::headerData(...)})

RETURN self

METHOD rowCount() CLASS myModel
RETURN 1000000

METHOD columnCount() CLASS myModel
RETURN 10000

METHOD data(oIndex, nRole) CLASS myModel

   LOCAL oVariant := QVariant():new()
   LOCAL nRow := oIndex:row()
   LOCAL nColumn := oIndex:column()

   IF oIndex:isValid()

      IF nRole == Qt_DisplayRole
         oVariant := QVariant():new("C�lula " + AllTrim(Str(nRow)) + "," + AllTrim(Str(nColumn)))
      ELSEIF nRole == Qt_FontRole
         oVariant := QFont():new("arial bold", 12):toVariant()
      ELSEIF nRole == Qt_ForegroundRole
         oVariant := IIf(nRow / 2 == Int(nRow / 2), QColor():new("white"):toVariant(), QColor():new("yellow"):toVariant())
      ELSEIF nRole == Qt_BackgroundRole
         oVariant := IIf(nRow / 2 == Int(nRow / 2), QColor():new("blue"):toVariant(), QColor():new("dark green"):toVariant())
      ENDIF

   ENDIF

RETURN oVariant

METHOD headerData(nSection, nOrientation, nRole) CLASS myModel

   LOCAL oVariant := QVariant():new()

   IF nOrientation == Qt_Horizontal .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new("Coluna " + AllTrim(Str(nSection)))
   ELSEIF nOrientation == Qt_Vertical .AND. nRole == Qt_DisplayRole
      oVariant := QVariant():new("Linha " + AllTrim(Str(nSection)))
   ENDIF

RETURN oVariant

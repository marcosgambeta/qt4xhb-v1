//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLabelWidth
   LOCAL oLabelHeight

   oApp := QApplication():new()

   oWindow := QWidget():new():setWindowTitle("Teste do evento resize"):resize(640, 480)

   oLabelWidth := QLabel():new("0", oWindow):move(20, 20):resize(100, 30)
   oLabelHeight := QLabel():new("0", oWindow):move(20, 80):resize(100, 30)

   oWindow:onResizeEvent({|oSender, oResizeEvent|
      oLabelWidth:setText(AllTrim(Str(oResizeEvent:size():width())))
      oLabelHeight:setText(AllTrim(Str(oResizeEvent:size():height())))
      })

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

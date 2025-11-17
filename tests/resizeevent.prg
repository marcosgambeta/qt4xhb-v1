//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oLabelWidth
   LOCAL oLabelHeight

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new():setWindowTitle("Test with resize event"):resize(640, 480)

   oLabelWidth := QLabel():new("0", oWindow):move(20, 20):resize(100, 30)
   oLabelHeight := QLabel():new("0", oWindow):move(20, 80):resize(100, 30)

   oWindow:onResizeEvent({|oSender, oResizeEvent|
      HB_SYMBOL_UNUSED(oSender)
      oLabelWidth:setText(alltrim(str(oResizeEvent:size():width())))
      oLabelHeight:setText(alltrim(str(oResizeEvent:size():height())))
      RETURN NIL
      })

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

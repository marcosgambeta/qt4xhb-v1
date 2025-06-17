//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

#ifdef __XHARBOUR__
REQUEST HB_GT_WIN
#endif

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oButton3

   oApp := QApplication():new()

   oWindow := QWidget():new():resize(320, 240)

   oButton1 := QPushButton():new("PushButton 1", oWindow):move(20, 20):setObjectName("button1")
   ? oButton1:connect("clicked()", @buttonClicked())

   oButton2 := QPushButton():new("PushButton 2", oWindow):move(20, 70):setObjectName("button2")
   ? oButton2:connect("clicked()", @buttonClicked())

   oButton3 := QPushButton():new("PushButton 3", oWindow):move(20, 120):setObjectName("button3")
   ? oButton3:connect("clicked()", @buttonClicked())

   oWindow:show()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN NIL

STATIC FUNCTION buttonClicked(oButton)

   ? oButton:classname()

   IF oButton:objectName() == "button1"
      ? "button 1 clicked"
   ELSEIF oButton:objectName() == "button2"
      ? "button 2 clicked"
   ELSEIF oButton:objectName() == "button3"
      ? "button 3 clicked"
   ENDIF

RETURN NIL

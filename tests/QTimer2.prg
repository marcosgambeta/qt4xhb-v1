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
   LOCAL oTimer1
   LOCAL oTimer2

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Test with QTimer class")
   oWindow:resize(640, 480)

   oTimer1 := QTimer():new(oWindow)
   ? oTimer1:onTimeout({||qout("timer 1 executado")})
   oTimer1:setInterval(1000)
   oTimer1:start()

   oTimer2 := QTimer():new(oWindow)
   ? oTimer2:onTimeout({||qout("timer 2 executado")})
   oTimer2:setInterval(2000)
   oTimer2:start()

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

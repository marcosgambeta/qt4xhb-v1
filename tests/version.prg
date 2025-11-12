//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oButton1
   LOCAL oButton2
   LOCAL oButton3

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:resize(320, 240)

   oButton1 := QPushButton():new("Qt4xHb version", oWindow)
   oButton1:move(20, 20)
   oButton1:onClicked({||QMessageBox():information(oWindow, "Version", qt4xhb_version())})

   oButton2 := QPushButton():new("Qt4xHb build date", oWindow)
   oButton2:move(20, 70)
   oButton2:onClicked({||QMessageBox():information(oWindow, "Build Date", qt4xhb_build_date())})

   oButton3 := QPushButton():new("Qt4xHb build time", oWindow)
   oButton3:move(20, 120)
   oButton3:onClicked({||QMessageBox():information(oWindow, "Build Time", qt4xhb_build_time())})

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

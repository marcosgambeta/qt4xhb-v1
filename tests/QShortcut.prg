//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oShortcut1
   LOCAL oShortcut2
   LOCAL oShortcut3
   LOCAL oShortcut4
   LOCAL oShortcut5
   LOCAL oShortcut6
   LOCAL oShortcut7
   LOCAL oShortcut8
   LOCAL oShortcut9

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QMainWindow():new()
   oWindow:setWindowTitle("Test with QShortcut class")
   oWindow:resize(640, 480)

   // create shortcut F1
   oShortcut1 := QShortcut():new(QKeySequence():new("F1"), oWindow)
   oShortcut1:onActivated({||qout("F1 pressionado")})

   // create shortcut F2
   oShortcut2 := QShortcut():new(QKeySequence():new("F2"), oWindow)
   oShortcut2:onActivated({||qout("F2 pressionado")})

   // create shortcut F3
   oShortcut3 := QShortcut():new(QKeySequence():new("F3"), oWindow)
   oShortcut3:onActivated({||qout("F3 pressionado")})

   // create shortcut CTRL+F1
   oShortcut4 := QShortcut():new(QKeySequence():new("CTRL+F1"), oWindow)
   oShortcut4:onActivated({||qout("CTRL+F1 pressionado")})

   // create shortcut CTRL+F2
   oShortcut5 := QShortcut():new(QKeySequence():new("CTRL+F2"), oWindow)
   oShortcut5:onActivated({||qout("CTRL+F2 pressionado")})

   // create shortcut CTRL+F3
   oShortcut6 := QShortcut():new(QKeySequence():new("CTRL+F3"), oWindow)
   oShortcut6:onActivated({||qout("CTRL+F3 pressionado")})

   // create shortcut ALT+F1
   oShortcut7 := QShortcut():new(QKeySequence():new("ALT+F1"), oWindow)
   oShortcut7:onActivated({||qout("ALT+F1 pressionado")})

   // create shortcut ALT+F2
   oShortcut8 := QShortcut():new(QKeySequence():new("ALT+F2"), oWindow)
   oShortcut8:onActivated({||qout("ALT+F2 pressionado")})

   // create shortcut ALT+F3
   oShortcut9 := QShortcut():new(QKeySequence():new("ALT+F3"), oWindow)
   oShortcut9:onActivated({||qout("ALT+F3 pressionado")})

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

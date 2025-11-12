//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

#include "qt4xhb.ch"

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow
   LOCAL oCompleter
   LOCAL oLineEdit
   LOCAL aDados

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Test with QCompleter class")
   oWindow:resize(640, 480)

   // string array
   aDados := {}
   aadd(aDados, "Marcia"   )
   aadd(aDados, "Marcelo"  )
   aadd(aDados, "Marcelino")
   aadd(aDados, "Marcos"   )
   aadd(aDados, "Marcolino")
   aadd(aDados, "Maria"    )
   aadd(aDados, "Margarida")
   aadd(aDados, "Mario"    )
   aadd(aDados, "Maristela")

   // create the object QCompleter using the array as data source
   oCompleter := QCompleter():new(aDados, oWindow)
   oCompleter:setCaseSensitivity(Qt_CaseInsensitive)

   // create the object QLineEdit
   oLineEdit := QLineEdit():new(oWindow)
   oLineEdit:move(10, 10)
   oLineEdit:resize(200, 20)
   // link with the object QCompleter
   oLineEdit:setCompleter(oCompleter)

   // show window
   oWindow:show()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

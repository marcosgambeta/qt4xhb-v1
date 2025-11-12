//
// Qt4xHb Project - Test Program
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

FUNCTION Main()

   LOCAL oApp
   LOCAL oWindow

#ifdef __QT4XHB__
   ? "using Qt4xHb (prg)"
#endif

   // create application
   oApp := QApplication():new()

   // create window
   oWindow := QWidget():new()
   oWindow:setWindowTitle("Test")
   oWindow:resize(640, 480)

   // show window
   oWindow:show()

   test()

   // start application
   oApp:exec()

   // delete objects
   oWindow:delete()
   oApp:delete()

RETURN NIL

#pragma BEGINDUMP

#include <iostream>
#include <hbapi.h>

HB_FUNC(TEST)
{
#ifdef __QT4XHB__
   std::cout << "\n" << "using Qt4xHb (cpp)" << "\n";
#endif
}

#pragma ENDDUMP

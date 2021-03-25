/*

  Qt4xHb Project - Test Program

  Copyright (C) 2021 Marcos Antonio Gambeta

  E-mail:
  marcosgambeta AT outlook DOT com

  Website:
  https://github.com/magsoftinfo/qt4xhb

*/

PROCEDURE Main ()

   LOCAL oApp
   LOCAL oWindow

#ifdef __QT4XHB__
   ? "using Qt4xHb (prg)"
#endif

   oApp := QApplication():new()

   oWindow := QWidget():new()
   oWindow:setWindowTitle( "Test" )
   oWindow:resize( 640, 480 )

   oWindow:show()

   test()

   oApp:exec()

   oWindow:delete()

   oApp:delete()

RETURN

#pragma BEGINDUMP

#include <iostream>
#include "hbapi.h"

HB_FUNC( TEST )
{
#ifdef __QT4XHB__
   std::cout << "\n" << "using Qt4xHb (cpp)" << "\n";
#endif
}

#pragma ENDDUMP

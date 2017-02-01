/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QWindowsVistaStyle INHERIT QWindowsXPStyle

   DATA class_id INIT Class_Id_QWindowsVistaStyle
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWindowsVistaStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

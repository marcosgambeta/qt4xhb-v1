/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QEventLoop INHERIT QObject

   DATA class_id INIT Class_Id_QEventLoop
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD exec
   METHOD exit
   METHOD isRunning
   METHOD processEvents1
   METHOD processEvents2
   METHOD processEvents
   METHOD wakeUp
   METHOD quit
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QEventLoop
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

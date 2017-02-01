/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QTimer INHERIT QObject

   DATA class_id INIT Class_Id_QTimer
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD interval
   METHOD isActive
   METHOD isSingleShot
   METHOD setInterval
   METHOD setSingleShot
   METHOD timerId
   METHOD start1
   METHOD start2
   METHOD start
   METHOD stop
   METHOD singleShot
   METHOD onTimeout
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTimer
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

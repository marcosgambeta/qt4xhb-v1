/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QOBJECT
REQUEST QBYTEARRAY

CLASS QSignalTransition INHERIT QAbstractTransition

   DATA class_id INIT Class_Id_QSignalTransition
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD senderObject
   METHOD setSenderObject
   METHOD signal
   METHOD setSignal
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSignalTransition
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

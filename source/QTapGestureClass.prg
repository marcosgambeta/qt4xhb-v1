/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINTF

CLASS QTapGesture INHERIT QGesture

   DATA class_id INIT Class_Id_QTapGesture
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD position
   METHOD setPosition
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTapGesture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

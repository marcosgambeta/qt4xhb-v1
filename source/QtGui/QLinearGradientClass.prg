/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINTF

CLASS QLinearGradient INHERIT QGradient

   DATA class_id INIT Class_Id_QLinearGradient
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD finalStop
   METHOD setFinalStop1
   METHOD setFinalStop2
   METHOD setFinalStop
   METHOD setStart1
   METHOD setStart2
   METHOD setStart
   METHOD start
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLinearGradient
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

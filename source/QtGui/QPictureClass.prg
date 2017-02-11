/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECT

CLASS QPicture INHERIT QPaintDevice

   DATA class_id INIT Class_Id_QPicture
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD boundingRect
   METHOD data
   METHOD isNull
   METHOD load1
   METHOD load2
   METHOD load
   METHOD play
   METHOD save1
   METHOD save2
   METHOD save
   METHOD setBoundingRect
   METHOD setData
   METHOD size
   METHOD swap
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPicture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

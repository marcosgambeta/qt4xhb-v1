/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECTF

CLASS QGraphicsEffect INHERIT QObject

   DATA class_id INIT Class_Id_QGraphicsEffect
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD boundingRect
   METHOD boundingRectFor
   METHOD isEnabled
   METHOD setEnabled
   METHOD update
   METHOD onEnabledChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsEffect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

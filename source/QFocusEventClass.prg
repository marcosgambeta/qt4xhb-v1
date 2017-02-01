/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QFocusEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QFocusEvent
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD gotFocus
   METHOD lostFocus
   METHOD reason
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QFocusEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QOBJECT
REQUEST QRECT

CLASS QAccessibleObject INHERIT QAccessibleInterface

   DATA class_id INIT Class_Id_QAccessibleObject
   DATA self_destruction INIT .f.

   METHOD actionText
   METHOD doAction
   METHOD isValid
   METHOD object
   METHOD rect
   METHOD setText
   METHOD userActionCount
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAccessibleObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBYTEARRAY
REQUEST QOBJECT

CLASS QPropertyAnimation INHERIT QVariantAnimation

   DATA class_id INIT Class_Id_QPropertyAnimation
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD propertyName
   METHOD setPropertyName
   METHOD setTargetObject
   METHOD targetObject
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPropertyAnimation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

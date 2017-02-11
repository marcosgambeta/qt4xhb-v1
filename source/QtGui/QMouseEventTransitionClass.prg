/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPAINTERPATH

CLASS QMouseEventTransition INHERIT QEventTransition

   DATA class_id INIT Class_Id_QMouseEventTransition
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD button
   METHOD hitTestPath
   METHOD modifierMask
   METHOD setButton
   METHOD setHitTestPath
   METHOD setModifierMask
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMouseEventTransition
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

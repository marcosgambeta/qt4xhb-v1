/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPAUSEANIMATION
REQUEST QABSTRACTANIMATION

CLASS QSequentialAnimationGroup INHERIT QAnimationGroup

   DATA class_id INIT Class_Id_QSequentialAnimationGroup
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD addPause
   METHOD currentAnimation
   METHOD insertPause
   METHOD duration
   METHOD onCurrentAnimationChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSequentialAnimationGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

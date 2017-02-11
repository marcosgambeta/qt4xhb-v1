/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QABSTRACTANIMATION

CLASS QAnimationGroup INHERIT QAbstractAnimation

   DATA class_id INIT Class_Id_QAnimationGroup
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD addAnimation
   METHOD animationAt
   METHOD animationCount
   METHOD clear
   METHOD indexOfAnimation
   METHOD insertAnimation
   METHOD removeAnimation
   METHOD takeAnimation
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAnimationGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

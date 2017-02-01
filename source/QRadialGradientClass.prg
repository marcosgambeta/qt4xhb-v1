/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINTF

CLASS QRadialGradient INHERIT QGradient

   DATA class_id INIT Class_Id_QRadialGradient
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new
   METHOD delete
   METHOD center
   METHOD setCenter1
   METHOD setCenter2
   METHOD setCenter
   METHOD focalPoint
   METHOD setFocalPoint1
   METHOD setFocalPoint2
   METHOD setFocalPoint
   METHOD radius
   METHOD setRadius
   METHOD centerRadius
   METHOD setCenterRadius
   METHOD focalRadius
   METHOD setFocalRadius
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRadialGradient
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

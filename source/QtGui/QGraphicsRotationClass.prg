/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVECTOR3D

CLASS QGraphicsRotation INHERIT QGraphicsTransform

   DATA class_id INIT Class_Id_QGraphicsRotation
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD angle
   METHOD axis
   METHOD origin
   METHOD setAngle
   METHOD setAxis1
   METHOD setAxis2
   METHOD setAxis
   METHOD setOrigin
   METHOD applyTo
   METHOD onAngleChanged
   METHOD onAxisChanged
   METHOD onOriginChanged
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsRotation
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

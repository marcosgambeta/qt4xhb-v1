/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVECTOR3D
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QVECTOR2D
REQUEST QVECTOR4D

CLASS QVector3D

   DATA pointer
   DATA class_id INIT Class_Id_QVector3D
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
   METHOD distanceToLine
   METHOD distanceToPlane1
   METHOD distanceToPlane2
   METHOD distanceToPlane
   METHOD isNull
   METHOD length
   METHOD lengthSquared
   METHOD normalize
   METHOD normalized
   METHOD setX
   METHOD setY
   METHOD setZ
   METHOD toPoint
   METHOD toPointF
   METHOD toVector2D
   METHOD toVector4D
   METHOD x
   METHOD y
   METHOD z
   METHOD crossProduct
   METHOD dotProduct
   METHOD normal1
   METHOD normal2
   METHOD normal
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QVector3D
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QVector3D
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QVector3D
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QVector3D
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QVector3D
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QVector3D
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

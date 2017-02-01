/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QVECTOR4D
REQUEST QMATRIX4X4
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QVECTOR3D
REQUEST QRECT
REQUEST QRECTF
REQUEST QMATRIX3X3
REQUEST QTRANSFORM

CLASS QMatrix4x4

   DATA pointer
   DATA class_id INIT Class_Id_QMatrix4x4
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new3
   METHOD new5
   METHOD new
   METHOD delete
   METHOD column
   METHOD determinant
   METHOD fill
   METHOD flipCoordinates
   METHOD frustum
   METHOD inverted
   METHOD isIdentity
   METHOD lookAt
   METHOD map1
   METHOD map2
   METHOD map3
   METHOD map4
   METHOD map
   METHOD mapRect1
   METHOD mapRect2
   METHOD mapRect
   METHOD mapVector
   METHOD normalMatrix
   METHOD optimize
   METHOD ortho1
   METHOD ortho2
   METHOD ortho3
   METHOD ortho
   METHOD perspective
   METHOD rotate1
   METHOD rotate2
   METHOD rotate3
   METHOD rotate
   METHOD row
   METHOD scale1
   METHOD scale2
   METHOD scale3
   METHOD scale4
   METHOD scale
   METHOD setColumn
   METHOD setRow
   METHOD setToIdentity
   METHOD toTransform1
   METHOD toTransform2
   METHOD toTransform
   METHOD translate1
   METHOD translate2
   METHOD translate3
   METHOD translate
   METHOD transposed
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QMatrix4x4
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QMatrix4x4
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QMatrix4x4
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QMatrix4x4
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QMatrix4x4
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QMatrix4x4
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

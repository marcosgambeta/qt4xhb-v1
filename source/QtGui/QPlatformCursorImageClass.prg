/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINT
REQUEST QIMAGE

CLASS QPlatformCursorImage

   DATA pointer
   DATA class_id INIT Class_Id_QPlatformCursorImage
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD hotspot
   METHOD image
   METHOD set1
   METHOD set2
   METHOD set3
   METHOD set
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QPlatformCursorImage
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QPlatformCursorImage
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QPlatformCursorImage
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QPlatformCursorImage
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QPlatformCursorImage
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QPlatformCursorImage
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

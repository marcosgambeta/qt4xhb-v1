/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QDESIGNERCUSTOMWIDGETINTERFACE

CLASS QDesignerCustomWidgetCollectionInterface

   DATA pointer
   DATA class_id INIT Class_Id_QDesignerCustomWidgetCollectionInterface
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD customWidgets
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QDesignerCustomWidgetCollectionInterface
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QDesignerCustomWidgetCollectionInterface
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QDesignerCustomWidgetCollectionInterface
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QDesignerCustomWidgetCollectionInterface
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QDesignerCustomWidgetCollectionInterface
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QDesignerCustomWidgetCollectionInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

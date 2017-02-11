/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWEBHISTORYITEM

CLASS QWebHistory

   DATA pointer
   DATA class_id INIT Class_Id_QWebHistory
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD back
   METHOD backItem
   METHOD backItems
   METHOD canGoBack
   METHOD canGoForward
   METHOD clear
   METHOD count
   METHOD currentItem
   METHOD currentItemIndex
   METHOD forward
   METHOD forwardItem
   METHOD forwardItems
   METHOD goToItem
   METHOD itemAt
   METHOD items
   METHOD maximumItemCount
   METHOD setMaximumItemCount
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QWebHistory
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QWebHistory
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QWebHistory
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QWebHistory
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QWebHistory
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QWebHistory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

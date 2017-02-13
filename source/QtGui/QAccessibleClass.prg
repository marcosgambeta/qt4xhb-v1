/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QACCESSIBLEINTERFACE

CLASS QAccessible

   DATA pointer
   DATA class_id INIT Class_Id_QAccessible
   DATA self_destruction INIT .f.

   METHOD isActive
   METHOD queryAccessibleInterface
   METHOD setRootObject
   METHOD updateAccessibility
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QAccessible
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QAccessible
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QAccessible
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QAccessible
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QAccessible
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QAccessible
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QAccessible>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"





/*
bool isActive ()
*/
HB_FUNC( QACCESSIBLE_ISACTIVE )
{
  bool b = QAccessible::isActive (  );
  hb_retl( b );
}


/*
QAccessibleInterface * queryAccessibleInterface ( QObject * object )
*/
HB_FUNC( QACCESSIBLE_QUERYACCESSIBLEINTERFACE )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QAccessibleInterface * ptr = QAccessible::queryAccessibleInterface ( par1 );
  _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );}



/*
void setRootObject ( QObject * object )
*/
HB_FUNC( QACCESSIBLE_SETROOTOBJECT )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QAccessible::setRootObject ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void updateAccessibility ( QObject * object, int child, Event reason )
*/
HB_FUNC( QACCESSIBLE_UPDATEACCESSIBILITY )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  QAccessible::updateAccessibility ( par1, par2,  (QAccessible::Event) par3 );
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACCESSIBLEINTERFACE
#endif

CLASS QAccessible

   DATA pointer
   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

#include <QAccessible>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
bool isActive ()
*/
HB_FUNC_STATIC( QACCESSIBLE_ISACTIVE )
{
  RBOOL( QAccessible::isActive () );
}

/*
QAccessibleInterface * queryAccessibleInterface ( QObject * object )
*/
HB_FUNC_STATIC( QACCESSIBLE_QUERYACCESSIBLEINTERFACE )
{
  QAccessibleInterface * ptr = QAccessible::queryAccessibleInterface ( PQOBJECT(1) );
  _qt4xhb_createReturnClass ( ptr, "QACCESSIBLEINTERFACE" );
}

/*
void setRootObject ( QObject * object )
*/
HB_FUNC_STATIC( QACCESSIBLE_SETROOTOBJECT )
{
  QAccessible::setRootObject ( PQOBJECT(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void updateAccessibility ( QObject * object, int child, Event reason )
*/
HB_FUNC_STATIC( QACCESSIBLE_UPDATEACCESSIBILITY )
{
  QAccessible::updateAccessibility ( PQOBJECT(1), PINT(2), (QAccessible::Event) hb_parni(3) );
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP

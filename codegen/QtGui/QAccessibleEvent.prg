$header

#include "hbclass.ch"

CLASS QAccessibleEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD child
   METHOD setValue
   METHOD value

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAccessibleEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QAccessibleEvent ( Type type, int child )
*/
HB_FUNC_STATIC( QACCESSIBLEEVENT_NEW )
{
  QAccessibleEvent * o = new QAccessibleEvent ( (QAccessibleEvent::Type) hb_parni(1), PINT(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
int child () const
*/
HB_FUNC_STATIC( QACCESSIBLEEVENT_CHILD )
{
  QAccessibleEvent * obj = (QAccessibleEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->child () );
  }
}

/*
void setValue ( const QString & text )
*/
$method=|void|setValue|const QString &

/*
QString value () const
*/
$method=|QString|value|

#pragma ENDDUMP

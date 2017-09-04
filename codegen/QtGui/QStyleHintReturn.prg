$header

#include "hbclass.ch"

CLASS QStyleHintReturn

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QStyleHintReturn>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStyleHintReturn ( int version = QStyleOption::Version, int type = SH_Default )
*/
HB_FUNC_STATIC( QSTYLEHINTRETURN_NEW )
{
  QStyleHintReturn * o = new QStyleHintReturn ( OPINT(1,QStyleOption::Version), OPINT(2,QStyleHintReturn::SH_Default) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QSTYLEHINTRETURN_DELETE )
{
  QStyleHintReturn * obj = (QStyleHintReturn *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP

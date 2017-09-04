$header

#include "hbclass.ch"

CLASS QCloseEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QCloseEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QCloseEvent ()
*/
HB_FUNC_STATIC( QCLOSEEVENT_NEW )
{
  QCloseEvent * o = new QCloseEvent ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QCLOSEEVENT_DELETE )
{
  QCloseEvent * obj = (QCloseEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

#pragma ENDDUMP

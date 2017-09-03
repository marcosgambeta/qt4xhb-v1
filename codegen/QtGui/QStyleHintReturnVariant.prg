$header

#include "hbclass.ch"

CLASS QStyleHintReturnVariant INHERIT QStyleHintReturn

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleHintReturnVariant
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QStyleHintReturnVariant>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStyleHintReturnVariant ()
*/
HB_FUNC_STATIC( QSTYLEHINTRETURNVARIANT_NEW )
{
  QStyleHintReturnVariant * o = new QStyleHintReturnVariant ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QSTYLEHINTRETURNVARIANT_DELETE )
{
  QStyleHintReturnVariant * obj = (QStyleHintReturnVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

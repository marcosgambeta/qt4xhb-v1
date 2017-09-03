$header

#include "hbclass.ch"

CLASS QIconDragEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QIconDragEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QIconDragEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QIconDragEvent ()
*/
HB_FUNC_STATIC( QICONDRAGEVENT_NEW )
{
  QIconDragEvent * o = new QIconDragEvent ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QICONDRAGEVENT_DELETE )
{
  QIconDragEvent * obj = (QIconDragEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

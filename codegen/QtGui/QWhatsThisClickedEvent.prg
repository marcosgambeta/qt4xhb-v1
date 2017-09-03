$header

#include "hbclass.ch"

CLASS QWhatsThisClickedEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD href

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWhatsThisClickedEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QWhatsThisClickedEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWhatsThisClickedEvent(const QString &href)
*/
HB_FUNC_STATIC( QWHATSTHISCLICKEDEVENT_NEW )
{
  QWhatsThisClickedEvent * o = new QWhatsThisClickedEvent ( PQSTRING(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QWHATSTHISCLICKEDEVENT_DELETE )
{
  QWhatsThisClickedEvent * obj = (QWhatsThisClickedEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

/*
QString href() const
*/
HB_FUNC_STATIC( QWHATSTHISCLICKEDEVENT_HREF )
{
  QWhatsThisClickedEvent * obj = (QWhatsThisClickedEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->href () );
  }
}

#pragma ENDDUMP

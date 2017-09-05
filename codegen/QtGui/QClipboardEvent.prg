$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QEVENTPRIVATE
#endif

CLASS QClipboardEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD data

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QClipboardEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QClipboardEvent(QEventPrivate *data)
*/
HB_FUNC_STATIC( QCLIPBOARDEVENT_NEW )
{
  QEventPrivate * par1 = (QEventPrivate *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QClipboardEvent * o = new QClipboardEvent ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
QEventPrivate *data()
*/
HB_FUNC_STATIC( QCLIPBOARDEVENT_DATA )
{
  QClipboardEvent * obj = (QClipboardEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QEventPrivate * ptr = obj->data ();
    _qt4xhb_createReturnClass ( ptr, "QEVENTPRIVATE" );
  }
}

#pragma ENDDUMP

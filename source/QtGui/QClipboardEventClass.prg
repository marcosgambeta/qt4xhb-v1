/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QEVENTPRIVATE
#endif

CLASS QClipboardEvent INHERIT QEvent

   DATA class_id INIT Class_Id_QClipboardEvent
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD data
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QClipboardEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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
  QClipboardEvent * o = NULL;
  QEventPrivate * par1 = (QEventPrivate *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QClipboardEvent ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QCLIPBOARDEVENT_DELETE )
{
  QClipboardEvent * obj = (QClipboardEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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

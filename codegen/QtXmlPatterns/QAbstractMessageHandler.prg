$header

#include "hbclass.ch"


CLASS QAbstractMessageHandler INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD message
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractMessageHandler>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QABSTRACTMESSAGEHANDLER_DELETE )
{
  QAbstractMessageHandler * obj = (QAbstractMessageHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void message ( QtMsgType type, const QString & description, const QUrl & identifier = QUrl(), const QSourceLocation & sourceLocation = QSourceLocation() )
*/
HB_FUNC_STATIC( QABSTRACTMESSAGEHANDLER_MESSAGE )
{
  QAbstractMessageHandler * obj = (QAbstractMessageHandler *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QUrl par3 = ISNIL(3)? QUrl() : *(QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSourceLocation par4 = ISNIL(4)? QSourceLocation() : *(QSourceLocation *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->message ( (QtMsgType) par1, PQSTRING(2), par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWEBHISTORYINTERFACE
#endif

CLASS QWebHistoryInterface INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addHistoryEntry
   METHOD historyContains
   METHOD defaultInterface
   METHOD setDefaultInterface
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWebHistoryInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual void addHistoryEntry ( const QString & url ) = 0
*/
HB_FUNC_STATIC( QWEBHISTORYINTERFACE_ADDHISTORYENTRY )
{
  QWebHistoryInterface * obj = (QWebHistoryInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addHistoryEntry ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool historyContains ( const QString & url ) const = 0
*/
HB_FUNC_STATIC( QWEBHISTORYINTERFACE_HISTORYCONTAINS )
{
  QWebHistoryInterface * obj = (QWebHistoryInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->historyContains ( PQSTRING(1) ) );
  }
}



/*
QWebHistoryInterface * defaultInterface ()
*/
HB_FUNC_STATIC( QWEBHISTORYINTERFACE_DEFAULTINTERFACE )
{
  QWebHistoryInterface * ptr = QWebHistoryInterface::defaultInterface ();
  _qt4xhb_createReturnClass ( ptr, "QWEBHISTORYINTERFACE" );
}


/*
void setDefaultInterface ( QWebHistoryInterface * defaultInterface )
*/
HB_FUNC_STATIC( QWEBHISTORYINTERFACE_SETDEFAULTINTERFACE )
{
  QWebHistoryInterface * par1 = (QWebHistoryInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QWebHistoryInterface::setDefaultInterface ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

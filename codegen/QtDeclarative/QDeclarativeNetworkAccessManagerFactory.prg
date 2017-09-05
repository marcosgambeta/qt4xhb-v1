$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QNETWORKACCESSMANAGER
#endif

CLASS QDeclarativeNetworkAccessManagerFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD create
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDeclarativeNetworkAccessManagerFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QNetworkAccessManager * create ( QObject * parent ) = 0
*/
HB_FUNC_STATIC( QDECLARATIVENETWORKACCESSMANAGERFACTORY_CREATE )
{
  QDeclarativeNetworkAccessManagerFactory * obj = (QDeclarativeNetworkAccessManagerFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkAccessManager * ptr = obj->create ( PQOBJECT(1) );
    _qt4xhb_createReturnClass ( ptr, "QNETWORKACCESSMANAGER" );
  }
}

$extraMethods

#pragma ENDDUMP

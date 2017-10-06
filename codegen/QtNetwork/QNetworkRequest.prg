$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QOBJECT
REQUEST QBYTEARRAY
REQUEST QSSLCONFIGURATION
REQUEST QURL
#endif

CLASS QNetworkRequest

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD attribute
   METHOD hasRawHeader
   METHOD header
   METHOD originatingObject
   METHOD priority
   METHOD rawHeader
   METHOD rawHeaderList
   METHOD setAttribute
   METHOD setHeader
   METHOD setOriginatingObject
   METHOD setPriority
   METHOD setRawHeader
   METHOD setSslConfiguration
   METHOD setUrl
   METHOD sslConfiguration
   METHOD url

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QNetworkRequest>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QSslConfiguration>

/*
QNetworkRequest ( const QUrl & url = QUrl() )
*/
$constructor=|new1|const QUrl &=QUrl()

/*
QNetworkRequest ( const QNetworkRequest & other )
*/
$constructor=|new2|const QNetworkRequest &

//[1]QNetworkRequest ( const QUrl & url = QUrl() )
//[2]QNetworkRequest ( const QNetworkRequest & other )

HB_FUNC_STATIC( QNETWORKREQUEST_NEW )
{
  if( ISBETWEEN(0,1) && (ISQURL(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QNETWORKREQUEST_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQNETWORKREQUEST(1) )
  {
    HB_FUNC_EXEC( QNETWORKREQUEST_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QVariant attribute ( Attribute code, const QVariant & defaultValue = QVariant() ) const
*/
$method=|QVariant|attribute|QNetworkRequest::Attribute,const QVariant &=QVariant()

/*
bool hasRawHeader ( const QByteArray & headerName ) const
*/
$method=|bool|hasRawHeader|const QByteArray &

/*
QVariant header ( KnownHeaders header ) const
*/
$method=|QVariant|header|QNetworkRequest::KnownHeaders

/*
QObject * originatingObject () const
*/
$method=|QObject *|originatingObject|

/*
Priority priority () const
*/
$method=|QNetworkRequest::Priority|priority|

/*
QByteArray rawHeader ( const QByteArray & headerName ) const
*/
$method=|QByteArray|rawHeader|const QByteArray &

/*
QList<QByteArray> rawHeaderList () const
*/
HB_FUNC_STATIC( QNETWORKREQUEST_RAWHEADERLIST )
{
  QNetworkRequest * obj = (QNetworkRequest *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QByteArray> list = obj->rawHeaderList ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
void setAttribute ( Attribute code, const QVariant & value )
*/
$method=|void|setAttribute|QNetworkRequest::Attribute,const QVariant &

/*
void setHeader ( KnownHeaders header, const QVariant & value )
*/
$method=|void|setHeader|QNetworkRequest::KnownHeaders,const QVariant &

/*
void setOriginatingObject ( QObject * object )
*/
$method=|void|setOriginatingObject|QObject *

/*
void setPriority ( Priority priority )
*/
$method=|void|setPriority|QNetworkRequest::Priority

/*
void setRawHeader ( const QByteArray & headerName, const QByteArray & headerValue )
*/
$method=|void|setRawHeader|const QByteArray &,const QByteArray &

/*
void setSslConfiguration ( const QSslConfiguration & config )
*/
$method=|void|setSslConfiguration|const QSslConfiguration &

/*
void setUrl ( const QUrl & url )
*/
$method=|void|setUrl|const QUrl &

/*
QSslConfiguration sslConfiguration () const
*/
$method=|QSslConfiguration|sslConfiguration|

/*
QUrl url () const
*/
$method=|QUrl|url|

$extraMethods

#pragma ENDDUMP

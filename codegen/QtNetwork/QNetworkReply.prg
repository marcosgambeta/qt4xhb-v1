$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVARIANT
REQUEST QNETWORKACCESSMANAGER
REQUEST QBYTEARRAY
REQUEST QNETWORKREQUEST
REQUEST QSSLCONFIGURATION
REQUEST QURL
#endif

CLASS QNetworkReply INHERIT QIODevice

   METHOD delete
   METHOD abort
   METHOD attribute
   METHOD error
   METHOD hasRawHeader
   METHOD header
   METHOD ignoreSslErrors1
   METHOD ignoreSslErrors2
   METHOD ignoreSslErrors
   METHOD isFinished
   METHOD isRunning
   METHOD manager
   METHOD operation
   METHOD rawHeader
   METHOD rawHeaderList
   METHOD readBufferSize
   METHOD request
   METHOD setReadBufferSize
   METHOD setSslConfiguration
   METHOD sslConfiguration
   METHOD url
   METHOD close

   METHOD onDownloadProgress
   METHOD onError
   METHOD onFinished
   METHOD onMetaDataChanged
   METHOD onSslErrors
   METHOD onUploadProgress

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QNetworkReply>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QSslConfiguration>

$deleteMethod

$prototype=virtual void abort () = 0
$virtualMethod=|void|abort|

$prototype=QVariant attribute ( QNetworkRequest::Attribute code ) const
$method=|QVariant|attribute|QNetworkRequest::Attribute

$prototype=NetworkError error () const
$method=|QNetworkReply::NetworkError|error|

$prototype=bool hasRawHeader ( const QByteArray & headerName ) const
$method=|bool|hasRawHeader|const QByteArray &

$prototype=QVariant header ( QNetworkRequest::KnownHeaders header ) const
$method=|QVariant|header|QNetworkRequest::KnownHeaders

$prototype=void ignoreSslErrors ( const QList<QSslError> & errors )
HB_FUNC_STATIC( QNETWORKREPLY_IGNORESSLERRORS1 )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QSslError> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << *(QSslError *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->ignoreSslErrors ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=virtual void ignoreSslErrors ()
$virtualMethod=|void|ignoreSslErrors,ignoreSslErrors2|

//[1]void ignoreSslErrors ( const QList<QSslError> & errors )
//[2]virtual void ignoreSslErrors ()

HB_FUNC_STATIC( QNETWORKREPLY_IGNORESSLERRORS )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QNETWORKREPLY_IGNORESSLERRORS1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QNETWORKREPLY_IGNORESSLERRORS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=bool isFinished () const
$method=|bool|isFinished|

$prototype=bool isRunning () const
$method=|bool|isRunning|

$prototype=QNetworkAccessManager * manager () const
$method=|QNetworkAccessManager *|manager|

$prototype=QNetworkAccessManager::Operation operation () const
$method=|QNetworkAccessManager::Operation|operation|

$prototype=QByteArray rawHeader ( const QByteArray & headerName ) const
$method=|QByteArray|rawHeader|const QByteArray &

$prototype=QList<QByteArray> rawHeaderList () const
HB_FUNC_STATIC( QNETWORKREPLY_RAWHEADERLIST )
{
  QNetworkReply * obj = (QNetworkReply *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QByteArray> list = obj->rawHeaderList ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
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

$prototype=qint64 readBufferSize () const
$method=|qint64|readBufferSize|

$prototype=QNetworkRequest request () const
$method=|QNetworkRequest|request|

$prototype=virtual void setReadBufferSize ( qint64 size )
$virtualMethod=|void|setReadBufferSize|qint64

$prototype=void setSslConfiguration ( const QSslConfiguration & config )
$method=|void|setSslConfiguration|const QSslConfiguration &

$prototype=QSslConfiguration sslConfiguration () const
$method=|QSslConfiguration|sslConfiguration|

$prototype=QUrl url () const
$method=|QUrl|url|

$prototype=virtual void close ()
$virtualMethod=|void|close|

#pragma ENDDUMP

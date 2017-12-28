$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QBYTEARRAY
REQUEST QNETWORKCOOKIE
#endif

CLASS QNetworkCookie

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD domain
   METHOD expirationDate
   METHOD isHttpOnly
   METHOD isSecure
   METHOD isSessionCookie
   METHOD name
   METHOD path
   METHOD setDomain
   METHOD setExpirationDate
   METHOD setHttpOnly
   METHOD setName
   METHOD setPath
   METHOD setSecure
   METHOD setValue
   METHOD toRawForm
   METHOD value
   METHOD parseCookies

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QNetworkCookie>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDateTime>

$prototype=QNetworkCookie ( const QByteArray & name = QByteArray(), const QByteArray & value = QByteArray() )
$internalConstructor=|new1|const QByteArray &=QByteArray(),const QByteArray &=QByteArray()

$prototype=QNetworkCookie ( const QNetworkCookie & other )
$internalConstructor=|new2|const QNetworkCookie &

//[1]QNetworkCookie ( const QByteArray & name = QByteArray(), const QByteArray & value = QByteArray() )
//[2]QNetworkCookie ( const QNetworkCookie & other )

HB_FUNC_STATIC( QNETWORKCOOKIE_NEW )
{
  if( ISBETWEEN(0,2) && (ISQBYTEARRAY(1)||ISNIL(1)) && (ISQBYTEARRAY(2)||ISNIL(2)) )
  {
    QNetworkCookie_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKCOOKIE(1) )
  {
    QNetworkCookie_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QString domain () const
$method=|QString|domain|

$prototype=QDateTime expirationDate () const
$method=|QDateTime|expirationDate|

$prototype=bool isHttpOnly () const
$method=|bool|isHttpOnly|

$prototype=bool isSecure () const
$method=|bool|isSecure|

$prototype=bool isSessionCookie () const
$method=|bool|isSessionCookie|

$prototype=QByteArray name () const
$method=|QByteArray|name|

$prototype=QString path () const
$method=|QString|path|

$prototype=void setDomain ( const QString & domain )
$method=|void|setDomain|const QString &

$prototype=void setExpirationDate ( const QDateTime & date )
$method=|void|setExpirationDate|const QDateTime &

$prototype=void setHttpOnly ( bool enable )
$method=|void|setHttpOnly|bool

$prototype=void setName ( const QByteArray & cookieName )
$method=|void|setName|const QByteArray &

$prototype=void setPath ( const QString & path )
$method=|void|setPath|const QString &

$prototype=void setSecure ( bool enable )
$method=|void|setSecure|bool

$prototype=void setValue ( const QByteArray & value )
$method=|void|setValue|const QByteArray &

$prototype=QByteArray toRawForm ( RawForm form = Full ) const
$method=|QByteArray|toRawForm|QNetworkCookie::RawForm=QNetworkCookie::Full

$prototype=QByteArray value () const
$method=|QByteArray|value|

$prototype=QList<QNetworkCookie> parseCookies ( const QByteArray & cookieString )
HB_FUNC_STATIC( QNETWORKCOOKIE_PARSECOOKIES )
{
  QList<QNetworkCookie> list = QNetworkCookie::parseCookies ( *PQBYTEARRAY(1) );
  PHB_DYNS pDynSym = hb_dynsymFindName( "QNETWORKCOOKIE" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
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
      hb_itemPutPtr( pItem, (QNetworkCookie *) new QNetworkCookie ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

$extraMethods

#pragma ENDDUMP

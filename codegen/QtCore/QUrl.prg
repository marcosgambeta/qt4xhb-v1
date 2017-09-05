$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QURL
#endif

CLASS QUrl

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD addEncodedQueryItem
   METHOD addQueryItem
   METHOD allEncodedQueryItemValues
   METHOD allQueryItemValues
   METHOD authority
   METHOD clear
   METHOD encodedFragment
   METHOD encodedHost
   METHOD encodedPassword
   METHOD encodedPath
   METHOD encodedQuery
   METHOD encodedQueryItemValue
   METHOD encodedUserName
   METHOD errorString
   METHOD fragment
   METHOD hasEncodedQueryItem
   METHOD hasFragment
   METHOD hasQuery
   METHOD hasQueryItem
   METHOD host
   METHOD isEmpty
   METHOD isLocalFile
   METHOD isParentOf
   METHOD isRelative
   METHOD isValid
   METHOD password
   METHOD path
   METHOD port1
   METHOD port2
   METHOD port
   METHOD queryItemValue
   METHOD removeAllEncodedQueryItems
   METHOD removeAllQueryItems
   METHOD removeEncodedQueryItem
   METHOD removeQueryItem
   METHOD resolved
   METHOD scheme
   METHOD setAuthority
   METHOD setEncodedFragment
   METHOD setEncodedHost
   METHOD setEncodedPassword
   METHOD setEncodedPath
   METHOD setEncodedQuery
   METHOD setEncodedUrl1
   METHOD setEncodedUrl2
   METHOD setEncodedUrl
   METHOD setEncodedUserName
   METHOD setFragment
   METHOD setHost
   METHOD setPassword
   METHOD setPath
   METHOD setPort
   METHOD setQueryDelimiters
   METHOD setScheme
   METHOD setUrl1
   METHOD setUrl2
   METHOD setUrl
   METHOD setUserInfo
   METHOD setUserName
   METHOD swap
   METHOD toEncoded
   METHOD toLocalFile
   METHOD toString
   METHOD topLevelDomain
   METHOD userInfo
   METHOD userName
   METHOD fromAce
   METHOD fromEncoded1
   METHOD fromEncoded2
   METHOD fromEncoded
   METHOD fromLocalFile
   METHOD fromPercentEncoding
   METHOD fromUserInput
   METHOD idnWhitelist
   METHOD setIdnWhitelist
   METHOD toAce
   METHOD toPercentEncoding
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QUrl>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>

/*
QUrl ()
*/
HB_FUNC_STATIC( QURL_NEW1 )
{
  QUrl * o = new QUrl ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QUrl ( const QString & url )
*/
HB_FUNC_STATIC( QURL_NEW2 )
{
  QUrl * o = new QUrl ( PQSTRING(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QUrl ( const QUrl & other )
*/
HB_FUNC_STATIC( QURL_NEW3 )
{
  QUrl * o = new QUrl ( *PQURL(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QUrl ( const QString & url, ParsingMode parsingMode )
*/
HB_FUNC_STATIC( QURL_NEW4 )
{
  QUrl * o = new QUrl ( PQSTRING(1), (QUrl::ParsingMode) hb_parni(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QUrl ()
//[2]QUrl ( const QString & url )
//[3]QUrl ( const QUrl & other )
//[4]QUrl ( const QString & url, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QURL_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QURL_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QURL_NEW3 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QURL_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addEncodedQueryItem ( const QByteArray & key, const QByteArray & value )
*/
HB_FUNC_STATIC( QURL_ADDENCODEDQUERYITEM )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addEncodedQueryItem ( *PQBYTEARRAY(1), *PQBYTEARRAY(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void addQueryItem ( const QString & key, const QString & value )
*/
HB_FUNC_STATIC( QURL_ADDQUERYITEM )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addQueryItem ( PQSTRING(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QByteArray> allEncodedQueryItemValues ( const QByteArray & key ) const
*/
HB_FUNC_STATIC( QURL_ALLENCODEDQUERYITEMVALUES )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QByteArray> list = obj->allEncodedQueryItemValues ( *PQBYTEARRAY(1) );
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
QStringList allQueryItemValues ( const QString & key ) const
*/
HB_FUNC_STATIC( QURL_ALLQUERYITEMVALUES )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->allQueryItemValues ( PQSTRING(1) ) );
  }
}


/*
QString authority () const
*/
HB_FUNC_STATIC( QURL_AUTHORITY )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->authority () );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QURL_CLEAR )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray encodedFragment () const
*/
HB_FUNC_STATIC( QURL_ENCODEDFRAGMENT )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->encodedFragment () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray encodedHost () const
*/
HB_FUNC_STATIC( QURL_ENCODEDHOST )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->encodedHost () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray encodedPassword () const
*/
HB_FUNC_STATIC( QURL_ENCODEDPASSWORD )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->encodedPassword () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray encodedPath () const
*/
HB_FUNC_STATIC( QURL_ENCODEDPATH )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->encodedPath () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray encodedQuery () const
*/
HB_FUNC_STATIC( QURL_ENCODEDQUERY )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->encodedQuery () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QByteArray encodedQueryItemValue ( const QByteArray & key ) const
*/
HB_FUNC_STATIC( QURL_ENCODEDQUERYITEMVALUE )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->encodedQueryItemValue ( *PQBYTEARRAY(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}



/*
QByteArray encodedUserName () const
*/
HB_FUNC_STATIC( QURL_ENCODEDUSERNAME )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->encodedUserName () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QString errorString () const
*/
HB_FUNC_STATIC( QURL_ERRORSTRING )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}


/*
QString fragment () const
*/
HB_FUNC_STATIC( QURL_FRAGMENT )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->fragment () );
  }
}


/*
bool hasEncodedQueryItem ( const QByteArray & key ) const
*/
HB_FUNC_STATIC( QURL_HASENCODEDQUERYITEM )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasEncodedQueryItem ( *PQBYTEARRAY(1) ) );
  }
}


/*
bool hasFragment () const
*/
HB_FUNC_STATIC( QURL_HASFRAGMENT )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasFragment () );
  }
}


/*
bool hasQuery () const
*/
HB_FUNC_STATIC( QURL_HASQUERY )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasQuery () );
  }
}


/*
bool hasQueryItem ( const QString & key ) const
*/
HB_FUNC_STATIC( QURL_HASQUERYITEM )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasQueryItem ( PQSTRING(1) ) );
  }
}


/*
QString host () const
*/
HB_FUNC_STATIC( QURL_HOST )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->host () );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QURL_ISEMPTY )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
bool isLocalFile () const
*/
HB_FUNC_STATIC( QURL_ISLOCALFILE )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isLocalFile () );
  }
}


/*
bool isParentOf ( const QUrl & childUrl ) const
*/
HB_FUNC_STATIC( QURL_ISPARENTOF )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isParentOf ( *PQURL(1) ) );
  }
}


/*
bool isRelative () const
*/
HB_FUNC_STATIC( QURL_ISRELATIVE )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isRelative () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QURL_ISVALID )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
QString password () const
*/
HB_FUNC_STATIC( QURL_PASSWORD )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->password () );
  }
}


/*
QString path () const
*/
HB_FUNC_STATIC( QURL_PATH )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->path () );
  }
}


/*
int port () const
*/
HB_FUNC_STATIC( QURL_PORT1 )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->port () );
  }
}


/*
int port ( int defaultPort ) const
*/
HB_FUNC_STATIC( QURL_PORT2 )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->port ( PINT(1) ) );
  }
}


//[1]int port () const
//[2]int port ( int defaultPort ) const

HB_FUNC_STATIC( QURL_PORT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QURL_PORT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QURL_PORT2 );
  }
}

/*
QString queryItemValue ( const QString & key ) const
*/
HB_FUNC_STATIC( QURL_QUERYITEMVALUE )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->queryItemValue ( PQSTRING(1) ) );
  }
}





/*
void removeAllEncodedQueryItems ( const QByteArray & key )
*/
HB_FUNC_STATIC( QURL_REMOVEALLENCODEDQUERYITEMS )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeAllEncodedQueryItems ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeAllQueryItems ( const QString & key )
*/
HB_FUNC_STATIC( QURL_REMOVEALLQUERYITEMS )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeAllQueryItems ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeEncodedQueryItem ( const QByteArray & key )
*/
HB_FUNC_STATIC( QURL_REMOVEENCODEDQUERYITEM )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeEncodedQueryItem ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeQueryItem ( const QString & key )
*/
HB_FUNC_STATIC( QURL_REMOVEQUERYITEM )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeQueryItem ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QUrl resolved ( const QUrl & relative ) const
*/
HB_FUNC_STATIC( QURL_RESOLVED )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->resolved ( *PQURL(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}


/*
QString scheme () const
*/
HB_FUNC_STATIC( QURL_SCHEME )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->scheme () );
  }
}


/*
void setAuthority ( const QString & authority )
*/
HB_FUNC_STATIC( QURL_SETAUTHORITY )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAuthority ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodedFragment ( const QByteArray & fragment )
*/
HB_FUNC_STATIC( QURL_SETENCODEDFRAGMENT )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEncodedFragment ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodedHost ( const QByteArray & host )
*/
HB_FUNC_STATIC( QURL_SETENCODEDHOST )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEncodedHost ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodedPassword ( const QByteArray & password )
*/
HB_FUNC_STATIC( QURL_SETENCODEDPASSWORD )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEncodedPassword ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodedPath ( const QByteArray & path )
*/
HB_FUNC_STATIC( QURL_SETENCODEDPATH )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEncodedPath ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodedQuery ( const QByteArray & query )
*/
HB_FUNC_STATIC( QURL_SETENCODEDQUERY )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEncodedQuery ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setEncodedUrl ( const QByteArray & encodedUrl )
*/
HB_FUNC_STATIC( QURL_SETENCODEDURL1 )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEncodedUrl ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setEncodedUrl ( const QByteArray & encodedUrl, ParsingMode parsingMode )
*/
HB_FUNC_STATIC( QURL_SETENCODEDURL2 )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setEncodedUrl ( *PQBYTEARRAY(1), (QUrl::ParsingMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setEncodedUrl ( const QByteArray & encodedUrl )
//[2]void setEncodedUrl ( const QByteArray & encodedUrl, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_SETENCODEDURL )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QURL_SETENCODEDURL1 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QURL_SETENCODEDURL2 );
  }
}

/*
void setEncodedUserName ( const QByteArray & userName )
*/
HB_FUNC_STATIC( QURL_SETENCODEDUSERNAME )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setEncodedUserName ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFragment ( const QString & fragment )
*/
HB_FUNC_STATIC( QURL_SETFRAGMENT )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFragment ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHost ( const QString & host )
*/
HB_FUNC_STATIC( QURL_SETHOST )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHost ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPassword ( const QString & password )
*/
HB_FUNC_STATIC( QURL_SETPASSWORD )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPassword ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPath ( const QString & path )
*/
HB_FUNC_STATIC( QURL_SETPATH )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPath ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPort ( int port )
*/
HB_FUNC_STATIC( QURL_SETPORT )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPort ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setQueryDelimiters ( char valueDelimiter, char pairDelimiter )
*/
HB_FUNC_STATIC( QURL_SETQUERYDELIMITERS )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par1 = ISCHAR(1)? (char) hb_parc(1)[0] : (ISNUM(1)? hb_parni(1) : 0);
    char par2 = ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0);
    obj->setQueryDelimiters ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setScheme ( const QString & scheme )
*/
HB_FUNC_STATIC( QURL_SETSCHEME )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setScheme ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUrl ( const QString & url )
*/
HB_FUNC_STATIC( QURL_SETURL1 )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setUrl ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUrl ( const QString & url, ParsingMode parsingMode )
*/
HB_FUNC_STATIC( QURL_SETURL2 )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->setUrl ( PQSTRING(1), (QUrl::ParsingMode) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void setUrl ( const QString & url )
//[2]void setUrl ( const QString & url, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_SETURL )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QURL_SETURL1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QURL_SETURL2 );
  }
}

/*
void setUserInfo ( const QString & userInfo )
*/
HB_FUNC_STATIC( QURL_SETUSERINFO )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setUserInfo ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUserName ( const QString & userName )
*/
HB_FUNC_STATIC( QURL_SETUSERNAME )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setUserName ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void swap ( QUrl & other )
*/
HB_FUNC_STATIC( QURL_SWAP )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray toEncoded ( FormattingOptions options = None ) const
*/
HB_FUNC_STATIC( QURL_TOENCODED )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toEncoded ( ISNIL(1)? QUrl::None : (QUrl::FormattingOptions) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
QString toLocalFile () const
*/
HB_FUNC_STATIC( QURL_TOLOCALFILE )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toLocalFile () );
  }
}


/*
QString toString ( FormattingOptions options = None ) const
*/
HB_FUNC_STATIC( QURL_TOSTRING )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toString ( ISNIL(1)? QUrl::None : (QUrl::FormattingOptions) hb_parni(1) ) );
  }
}


/*
QString topLevelDomain () const
*/
HB_FUNC_STATIC( QURL_TOPLEVELDOMAIN )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->topLevelDomain () );
  }
}


/*
QString userInfo () const
*/
HB_FUNC_STATIC( QURL_USERINFO )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->userInfo () );
  }
}


/*
QString userName () const
*/
HB_FUNC_STATIC( QURL_USERNAME )
{
  QUrl * obj = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->userName () );
  }
}



/*
QString fromAce ( const QByteArray & domain )
*/
HB_FUNC_STATIC( QURL_FROMACE )
{
  RQSTRING( QUrl::fromAce ( *PQBYTEARRAY(1) ) );
}


/*
QUrl fromEncoded ( const QByteArray & input )
*/
HB_FUNC_STATIC( QURL_FROMENCODED1 )
{
  QUrl * ptr = new QUrl( QUrl::fromEncoded ( *PQBYTEARRAY(1) ) );
  _qt4xhb_createReturnClass ( ptr, "QURL", true );
}


/*
QUrl fromEncoded ( const QByteArray & input, ParsingMode parsingMode )
*/
HB_FUNC_STATIC( QURL_FROMENCODED2 )
{
  int par2 = hb_parni(2);
  QUrl * ptr = new QUrl( QUrl::fromEncoded ( *PQBYTEARRAY(1), (QUrl::ParsingMode) par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QURL", true );
}


//[1]QUrl fromEncoded ( const QByteArray & input )
//[2]QUrl fromEncoded ( const QByteArray & input, ParsingMode parsingMode )

HB_FUNC_STATIC( QURL_FROMENCODED )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QURL_FROMENCODED1 );
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QURL_FROMENCODED2 );
  }
}

/*
QUrl fromLocalFile ( const QString & localFile )
*/
HB_FUNC_STATIC( QURL_FROMLOCALFILE )
{
  QUrl * ptr = new QUrl( QUrl::fromLocalFile ( PQSTRING(1) ) );
  _qt4xhb_createReturnClass ( ptr, "QURL", true );
}


/*
QString fromPercentEncoding ( const QByteArray & input )
*/
HB_FUNC_STATIC( QURL_FROMPERCENTENCODING )
{
  RQSTRING( QUrl::fromPercentEncoding ( *PQBYTEARRAY(1) ) );
}


/*
QUrl fromUserInput ( const QString & userInput )
*/
HB_FUNC_STATIC( QURL_FROMUSERINPUT )
{
  QUrl * ptr = new QUrl( QUrl::fromUserInput ( PQSTRING(1) ) );
  _qt4xhb_createReturnClass ( ptr, "QURL", true );
}


/*
QStringList idnWhitelist ()
*/
HB_FUNC_STATIC( QURL_IDNWHITELIST )
{
  RQSTRINGLIST( QUrl::idnWhitelist () );
}


/*
void setIdnWhitelist ( const QStringList & list )
*/
HB_FUNC_STATIC( QURL_SETIDNWHITELIST )
{
  QUrl::setIdnWhitelist ( PQSTRINGLIST(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QByteArray toAce ( const QString & domain )
*/
HB_FUNC_STATIC( QURL_TOACE )
{
  QByteArray * ptr = new QByteArray( QUrl::toAce ( PQSTRING(1) ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


/*
QByteArray toPercentEncoding ( const QString & input, const QByteArray & exclude = QByteArray(), const QByteArray & include = QByteArray() )
*/
HB_FUNC_STATIC( QURL_TOPERCENTENCODING )
{
  QByteArray par2 = ISNIL(2)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QByteArray par3 = ISNIL(3)? QByteArray() : *(QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QByteArray * ptr = new QByteArray( QUrl::toPercentEncoding ( PQSTRING(1), par2, par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}

$extraMethods

#pragma ENDDUMP

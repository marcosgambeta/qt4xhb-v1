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
$constructor=|new1|

/*
QUrl ( const QString & url )
*/
$constructor=|new2|const QString &

/*
QUrl ( const QUrl & other )
*/
$constructor=|new3|const QUrl &

/*
QUrl ( const QString & url, ParsingMode parsingMode )
*/
$constructor=|new4|const QString &,QUrl::ParsingMode

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
$method=|void|addEncodedQueryItem|const QByteArray &,const QByteArray &

/*
void addQueryItem ( const QString & key, const QString & value )
*/
$method=|void|addQueryItem|const QString &,const QString &

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
$method=|QStringList|allQueryItemValues|const QString &

/*
QString authority () const
*/
$method=|QString|authority|

/*
void clear ()
*/
$method=|void|clear|

/*
QByteArray encodedFragment () const
*/
$method=|QByteArray|encodedFragment|

/*
QByteArray encodedHost () const
*/
$method=|QByteArray|encodedHost|

/*
QByteArray encodedPassword () const
*/
$method=|QByteArray|encodedPassword|

/*
QByteArray encodedPath () const
*/
$method=|QByteArray|encodedPath|

/*
QByteArray encodedQuery () const
*/
$method=|QByteArray|encodedQuery|

/*
QByteArray encodedQueryItemValue ( const QByteArray & key ) const
*/
$method=|QByteArray|encodedQueryItemValue|const QByteArray &

/*
QByteArray encodedUserName () const
*/
$method=|QByteArray|encodedUserName|

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
QString fragment () const
*/
$method=|QString|fragment|

/*
bool hasEncodedQueryItem ( const QByteArray & key ) const
*/
$method=|bool|hasEncodedQueryItem|const QByteArray &

/*
bool hasFragment () const
*/
$method=|bool|hasFragment|

/*
bool hasQuery () const
*/
$method=|bool|hasQuery|

/*
bool hasQueryItem ( const QString & key ) const
*/
$method=|bool|hasQueryItem|const QString &

/*
QString host () const
*/
$method=|QString|host|

/*
bool isEmpty () const
*/
$method=|bool|isEmpty|

/*
bool isLocalFile () const
*/
$method=|bool|isLocalFile|

/*
bool isParentOf ( const QUrl & childUrl ) const
*/
$method=|bool|isParentOf|const QUrl &

/*
bool isRelative () const
*/
$method=|bool|isRelative|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QString password () const
*/
$method=|QString|password|

/*
QString path () const
*/
$method=|QString|path|

/*
int port () const
*/
$method=|int|port,port1|

/*
int port ( int defaultPort ) const
*/
$method=|int|port,port2|int

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
$method=|QString|queryItemValue|const QString &

/*
void removeAllEncodedQueryItems ( const QByteArray & key )
*/
$method=|void|removeAllEncodedQueryItems|const QByteArray &

/*
void removeAllQueryItems ( const QString & key )
*/
$method=|void|removeAllQueryItems|const QString &

/*
void removeEncodedQueryItem ( const QByteArray & key )
*/
$method=|void|removeEncodedQueryItem|const QByteArray &

/*
void removeQueryItem ( const QString & key )
*/
$method=|void|removeQueryItem|const QString &

/*
QUrl resolved ( const QUrl & relative ) const
*/
$method=|QUrl|resolved|const QUrl &

/*
QString scheme () const
*/
$method=|QString|scheme|

/*
void setAuthority ( const QString & authority )
*/
$method=|void|setAuthority|const QString &

/*
void setEncodedFragment ( const QByteArray & fragment )
*/
$method=|void|setEncodedFragment|const QByteArray &

/*
void setEncodedHost ( const QByteArray & host )
*/
$method=|void|setEncodedHost|const QByteArray &

/*
void setEncodedPassword ( const QByteArray & password )
*/
$method=|void|setEncodedPassword|const QByteArray &

/*
void setEncodedPath ( const QByteArray & path )
*/
$method=|void|setEncodedPath|const QByteArray &

/*
void setEncodedQuery ( const QByteArray & query )
*/
$method=|void|setEncodedQuery|const QByteArray &

/*
void setEncodedUrl ( const QByteArray & encodedUrl )
*/
$method=|void|setEncodedUrl,setEncodedUrl1|const QByteArray &

/*
void setEncodedUrl ( const QByteArray & encodedUrl, ParsingMode parsingMode )
*/
$method=|void|setEncodedUrl,setEncodedUrl2|const QByteArray &,QUrl::ParsingMode

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
$method=|void|setEncodedUserName|const QByteArray &

/*
void setFragment ( const QString & fragment )
*/
$method=|void|setFragment|const QString &

/*
void setHost ( const QString & host )
*/
$method=|void|setHost|const QString &

/*
void setPassword ( const QString & password )
*/
$method=|void|setPassword|const QString &

/*
void setPath ( const QString & path )
*/
$method=|void|setPath|const QString &

/*
void setPort ( int port )
*/
$method=|void|setPort|int

/*
void setQueryDelimiters ( char valueDelimiter, char pairDelimiter )
*/
$method=|void|setQueryDelimiters|char,char

/*
void setScheme ( const QString & scheme )
*/
$method=|void|setScheme|const QString &

/*
void setUrl ( const QString & url )
*/
$method=|void|setUrl|const QString &

/*
void setUrl ( const QString & url, ParsingMode parsingMode )
*/
$method=|void|setUrl,setUrl2|const QString &,QUrl::ParsingMode

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
$method=|void|setUserInfo|const QString &

/*
void setUserName ( const QString & userName )
*/
$method=|void|setUserName|const QString &

/*
void swap ( QUrl & other )
*/
$method=|void|swap|QUrl &

/*
QByteArray toEncoded ( FormattingOptions options = None ) const
*/
$method=|QByteArray|toEncoded|QUrl::FormattingOptions=QUrl::None

/*
QString toLocalFile () const
*/
$method=|QString|toLocalFile|

/*
QString toString ( FormattingOptions options = None ) const
*/
$method=|QString|toString|QUrl::FormattingOptions=QUrl::None

/*
QString topLevelDomain () const
*/
$method=|QString|topLevelDomain|

/*
QString userInfo () const
*/
$method=|QString|userInfo|

/*
QString userName () const
*/
$method=|QString|userName|

/*
static QString fromAce ( const QByteArray & domain )
*/
$staticMethod=|QString|fromAce|const QByteArray &

/*
static QUrl fromEncoded ( const QByteArray & input )
*/
$staticMethod=|QUrl|fromEncoded,fromEncoded1|const QByteArray &

/*
static QUrl fromEncoded ( const QByteArray & input, ParsingMode parsingMode )
*/
$staticMethod=|QUrl|fromEncoded,fromEncoded2|const QByteArray &,QUrl::ParsingMode

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
static QUrl fromLocalFile ( const QString & localFile )
*/
$staticMethod=|QUrl|fromLocalFile|const QString &

/*
static QString fromPercentEncoding ( const QByteArray & input )
*/
$staticMethod=|QString|fromPercentEncoding|const QByteArray &

/*
static QUrl fromUserInput ( const QString & userInput )
*/
$staticMethod=|QUrl|fromUserInput|const QString &

/*
static QStringList idnWhitelist ()
*/
$staticMethod=|QStringList|idnWhitelist|

/*
static void setIdnWhitelist ( const QStringList & list )
*/
$staticMethod=|void|setIdnWhitelist|const QStringList &

/*
static QByteArray toAce ( const QString & domain )
*/
$staticMethod=|QByteArray|toAce|const QString &

/*
static QByteArray toPercentEncoding ( const QString & input, const QByteArray & exclude = QByteArray(), const QByteArray & include = QByteArray() )
*/
$staticMethod=|QByteArray|toPercentEncoding|const QString &,const QByteArray &=QByteArray(),const QByteArray &=QByteArray()

$extraMethods

#pragma ENDDUMP

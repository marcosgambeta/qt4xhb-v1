%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>

$prototype=QUrl ()
$internalConstructor=|new1|

$prototype=QUrl ( const QString & url )
$internalConstructor=|new2|const QString &

$prototype=QUrl ( const QUrl & other )
$internalConstructor=|new3|const QUrl &

$prototype=QUrl ( const QString & url, ParsingMode parsingMode )
$internalConstructor=|new4|const QString &,QUrl::ParsingMode

/*
[1]QUrl ()
[2]QUrl ( const QString & url )
[3]QUrl ( const QUrl & other )
[4]QUrl ( const QString & url, ParsingMode parsingMode )
*/

HB_FUNC_STATIC( QURL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QUrl_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QUrl_new2();
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    QUrl_new3();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QUrl_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=void addEncodedQueryItem( const QByteArray & key, const QByteArray & value )

$prototypeV2=void addQueryItem( const QString & key, const QString & value )

$prototypeV2=QList<QByteArray> allEncodedQueryItemValues( const QByteArray & key ) const

$prototypeV2=QStringList allQueryItemValues( const QString & key ) const

$prototypeV2=QString authority() const

$prototypeV2=void clear()

$prototypeV2=QByteArray encodedFragment() const

$prototypeV2=QByteArray encodedHost() const

$prototypeV2=QByteArray encodedPassword() const

$prototypeV2=QByteArray encodedPath() const

$prototypeV2=QByteArray encodedQuery() const

$prototypeV2=QByteArray encodedQueryItemValue( const QByteArray & key ) const

$prototypeV2=QByteArray encodedUserName() const

$prototypeV2=QString errorString() const

$prototypeV2=QString fragment() const

$prototypeV2=bool hasEncodedQueryItem( const QByteArray & key ) const

$prototypeV2=bool hasFragment() const

$prototypeV2=bool hasQuery() const

$prototypeV2=bool hasQueryItem( const QString & key ) const

$prototypeV2=QString host() const

$prototypeV2=bool isEmpty() const

$prototypeV2=bool isLocalFile() const

$prototypeV2=bool isParentOf( const QUrl & childUrl ) const

$prototypeV2=bool isRelative() const

$prototypeV2=bool isValid() const

$prototypeV2=QString password() const

$prototypeV2=QString path() const

$prototype=int port () const
$internalMethod=|int|port,port1|

$prototype=int port ( int defaultPort ) const
$internalMethod=|int|port,port2|int

/*
[1]int port () const
[2]int port ( int defaultPort ) const
*/

HB_FUNC_STATIC( QURL_PORT )
{
  if( ISNUMPAR(0) )
  {
    QUrl_port1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QUrl_port2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=port

$prototypeV2=QString queryItemValue( const QString & key ) const

$prototypeV2=void removeAllEncodedQueryItems( const QByteArray & key )

$prototypeV2=void removeAllQueryItems( const QString & key )

$prototypeV2=void removeEncodedQueryItem( const QByteArray & key )

$prototypeV2=void removeQueryItem( const QString & key )

$prototypeV2=QUrl resolved( const QUrl & relative ) const

$prototypeV2=QString scheme() const

$prototypeV2=void setAuthority( const QString & authority )

$prototypeV2=void setEncodedFragment( const QByteArray & fragment )

$prototypeV2=void setEncodedHost( const QByteArray & host )

$prototypeV2=void setEncodedPassword( const QByteArray & password )

$prototypeV2=void setEncodedPath( const QByteArray & path )

$prototypeV2=void setEncodedQuery( const QByteArray & query )

$prototype=void setEncodedUrl ( const QByteArray & encodedUrl )
$internalMethod=|void|setEncodedUrl,setEncodedUrl1|const QByteArray &

$prototype=void setEncodedUrl ( const QByteArray & encodedUrl, ParsingMode parsingMode )
$internalMethod=|void|setEncodedUrl,setEncodedUrl2|const QByteArray &,QUrl::ParsingMode

/*
[1]void setEncodedUrl ( const QByteArray & encodedUrl )
[2]void setEncodedUrl ( const QByteArray & encodedUrl, ParsingMode parsingMode )
*/

HB_FUNC_STATIC( QURL_SETENCODEDURL )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QUrl_setEncodedUrl1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    QUrl_setEncodedUrl2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setEncodedUrl

$prototypeV2=void setEncodedUserName( const QByteArray & userName )

$prototypeV2=void setFragment( const QString & fragment )

$prototypeV2=void setHost( const QString & host )

$prototypeV2=void setPassword( const QString & password )

$prototypeV2=void setPath( const QString & path )

$prototypeV2=void setPort( int port )

$prototypeV2=void setQueryDelimiters( char valueDelimiter, char pairDelimiter )

$prototypeV2=void setScheme( const QString & scheme )

$prototype=void setUrl ( const QString & url )
$internalMethod=|void|setUrl,setUrl1|const QString &

$prototype=void setUrl ( const QString & url, ParsingMode parsingMode )
$internalMethod=|void|setUrl,setUrl2|const QString &,QUrl::ParsingMode

/*
[1]void setUrl ( const QString & url )
[2]void setUrl ( const QString & url, ParsingMode parsingMode )
*/

HB_FUNC_STATIC( QURL_SETURL )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QUrl_setUrl1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QUrl_setUrl2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setUrl

$prototypeV2=void setUserInfo( const QString & userInfo )

$prototypeV2=void setUserName( const QString & userName )

$prototypeV2=void swap( QUrl & other )

$prototype=QByteArray toEncoded ( FormattingOptions options = None ) const
$method=|QByteArray|toEncoded|QUrl::FormattingOptions=QUrl::None

$prototypeV2=QString toLocalFile() const

$prototype=QString toString ( FormattingOptions options = None ) const
$method=|QString|toString|QUrl::FormattingOptions=QUrl::None

$prototypeV2=QString topLevelDomain() const

$prototypeV2=QString userInfo() const

$prototypeV2=QString userName() const

$prototypeV2=static QString fromAce( const QByteArray & domain )

$prototype=static QUrl fromEncoded ( const QByteArray & input )
$internalStaticMethod=|QUrl|fromEncoded,fromEncoded1|const QByteArray &

$prototype=static QUrl fromEncoded ( const QByteArray & input, ParsingMode parsingMode )
$internalStaticMethod=|QUrl|fromEncoded,fromEncoded2|const QByteArray &,QUrl::ParsingMode

/*
[1]QUrl fromEncoded ( const QByteArray & input )
[2]QUrl fromEncoded ( const QByteArray & input, ParsingMode parsingMode )
*/

HB_FUNC_STATIC( QURL_FROMENCODED )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QUrl_fromEncoded1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    QUrl_fromEncoded2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=fromEncoded

$prototypeV2=static QUrl fromLocalFile( const QString & localFile )

$prototypeV2=static QString fromPercentEncoding( const QByteArray & input )

$prototypeV2=static QUrl fromUserInput( const QString & userInput )

$prototypeV2=static QStringList idnWhitelist()

$prototypeV2=static void setIdnWhitelist( const QStringList & list )

$prototypeV2=static QByteArray toAce( const QString & domain )

$prototype=static QByteArray toPercentEncoding ( const QString & input, const QByteArray & exclude = QByteArray(), const QByteArray & include = QByteArray() )
$staticMethod=|QByteArray|toPercentEncoding|const QString &,const QByteArray &=QByteArray(),const QByteArray &=QByteArray()

$extraMethods

#pragma ENDDUMP

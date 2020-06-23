%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QUrl>

$prototype=QNetworkProxyQuery ()
$internalConstructor=|new1|

$prototype=QNetworkProxyQuery ( const QUrl & requestUrl, QueryType queryType = UrlRequest )
$internalConstructor=|new2|const QUrl &,QNetworkProxyQuery::QueryType=QNetworkProxyQuery::UrlRequest

$prototype=QNetworkProxyQuery ( const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
$internalConstructor=|new3|const QString &,int,const QString &=QString(),QNetworkProxyQuery::QueryType=QNetworkProxyQuery::TcpSocket

$prototype=QNetworkProxyQuery ( quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )
$internalConstructor=|new4|quint16,const QString &=QString(),QNetworkProxyQuery::QueryType=QNetworkProxyQuery::TcpServer

$prototype=QNetworkProxyQuery ( const QNetworkProxyQuery & other )
$internalConstructor=|new5|const QNetworkProxyQuery &

$prototype=QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QUrl & requestUrl, QueryType queryType = UrlRequest )
$internalConstructor=|new6|const QNetworkConfiguration &,const QUrl &,QNetworkProxyQuery::QueryType=QNetworkProxyQuery::UrlRequest

$prototype=QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
$internalConstructor=|new7|const QNetworkConfiguration &,const QString &,int,const QString &=QString(),QNetworkProxyQuery::QueryType=QNetworkProxyQuery::TcpSocket

$prototype=QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )
$internalConstructor=|new8|const QNetworkConfiguration &,quint16,const QString &=QString(),QNetworkProxyQuery::QueryType=QNetworkProxyQuery::TcpServer

/*
[1]QNetworkProxyQuery ()
[2]QNetworkProxyQuery ( const QUrl & requestUrl, QueryType queryType = UrlRequest )
[3]QNetworkProxyQuery ( const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
[4]QNetworkProxyQuery ( quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )
[5]QNetworkProxyQuery ( const QNetworkProxyQuery & other )
[6]QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QUrl & requestUrl, QueryType queryType = UrlRequest )
[7]QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, const QString & hostname, int port, const QString & protocolTag = QString(), QueryType queryType = TcpSocket )
[8]QNetworkProxyQuery ( const QNetworkConfiguration & networkConfiguration, quint16 bindPort, const QString & protocolTag = QString(), QueryType queryType = TcpServer )
*/

HB_FUNC_STATIC( QNETWORKPROXYQUERY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkProxyQuery_new1();
  }
  else if( ISNUMPAR(2) && ISQURL(1) && ISNUM(2) )
  {
    QNetworkProxyQuery_new2();
  }
  else if( ISNUMPAR(4) && ISCHAR(1) && ISNUM(2) && ISCHAR(3) && ISNUM(4) )
  {
    QNetworkProxyQuery_new3();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISCHAR(2) && ISNUM(3) )
  {
    QNetworkProxyQuery_new4();
  }
  else if( ISNUMPAR(1) && ISQNETWORKPROXYQUERY(1) )
  {
    QNetworkProxyQuery_new5();
  }
  else if( ISNUMPAR(3) && ISQNETWORKCONFIGURATION(1) && ISQURL(2) && ISNUM(3) )
  {
    QNetworkProxyQuery_new6();
  }
  else if( ISNUMPAR(5) && ISQNETWORKCONFIGURATION(1) && ISCHAR(2) && ISNUM(3) && ISCHAR(4) && ISNUM(5) )
  {
    QNetworkProxyQuery_new7();
  }
  else if( ISNUMPAR(4) && ISQNETWORKCONFIGURATION(1) && ISNUM(2) && ISCHAR(3) && ISNUM(4) )
  {
    QNetworkProxyQuery_new8();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=int localPort() const

$prototypeV2=QString peerHostName() const

$prototypeV2=int peerPort() const

$prototypeV2=QString protocolTag() const

$prototypeV2=QNetworkProxyQuery::QueryType queryType() const

$prototypeV2=void setLocalPort( int port )

$prototypeV2=void setPeerHostName( const QString & hostname )

$prototypeV2=void setPeerPort( int port )

$prototypeV2=void setProtocolTag( const QString & protocolTag )

$prototypeV2=void setQueryType( QNetworkProxyQuery::QueryType type )

$prototypeV2=void setUrl( const QUrl & url )

$prototypeV2=QUrl url() const

$extraMethods

#pragma ENDDUMP

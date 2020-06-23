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

$prototype=QHostInfo ( int id = -1 )
$internalConstructor=|new1|int=-1

$prototype=QHostInfo ( const QHostInfo & other )
$internalConstructor=|new2|const QHostInfo &

/*
[1]QHostInfo ( int id = -1 )
[2]QHostInfo ( const QHostInfo & other )
*/

HB_FUNC_STATIC( QHOSTINFO_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QHostInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQHOSTINFO(1) )
  {
    QHostInfo_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QList<QHostAddress> addresses() const

$prototypeV2=QHostInfo::HostInfoError error() const

$prototypeV2=QString errorString() const

$prototypeV2=QString hostName() const

$prototypeV2=int lookupId() const

$prototypeV2=void setAddresses( const QList<QHostAddress> & addresses )

$prototypeV2=void setError( QHostInfo::HostInfoError error )

$prototypeV2=void setErrorString( const QString & str )

$prototypeV2=void setHostName( const QString & hostName )

$prototypeV2=void setLookupId( int id )

$prototypeV2=static void abortHostLookup( int id )

$prototypeV2=static QHostInfo fromName( const QString & name )

$prototypeV2=static QString localDomainName()

$prototypeV2=static QString localHostName()

$prototypeV2=static int lookupHost( const QString & name, QObject * receiver, const char * member )

$extraMethods

#pragma ENDDUMP

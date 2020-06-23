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

$prototype=QNetworkAddressEntry ()
$internalConstructor=|new1|

$prototype=QNetworkAddressEntry ( const QNetworkAddressEntry & other )
$internalConstructor=|new2|const QNetworkAddressEntry &

/*
[1]QNetworkAddressEntry ()
[2]QNetworkAddressEntry ( const QNetworkAddressEntry & other )
*/

HB_FUNC_STATIC( QNETWORKADDRESSENTRY_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkAddressEntry_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKADDRESSENTRY(1) )
  {
    QNetworkAddressEntry_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QHostAddress broadcast() const

$prototypeV2=QHostAddress ip() const

$prototypeV2=QHostAddress netmask() const

$prototypeV2=int prefixLength() const

$prototypeV2=void setBroadcast( const QHostAddress & newBroadcast )

$prototypeV2=void setIp( const QHostAddress & newIp )

$prototypeV2=void setNetmask( const QHostAddress & newNetmask )

$prototypeV2=void setPrefixLength( int length )

$extraMethods

#pragma ENDDUMP

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

$prototype=QNetworkInterface ()
$internalConstructor=|new1|

$prototype=QNetworkInterface ( const QNetworkInterface & other )
$internalConstructor=|new2|const QNetworkInterface &

/*
[1]QNetworkInterface ()
[2]QNetworkInterface ( const QNetworkInterface & other )
*/

HB_FUNC_STATIC( QNETWORKINTERFACE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkInterface_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKINTERFACE(1) )
  {
    QNetworkInterface_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=QList<QNetworkAddressEntry> addressEntries () const
$method=|QList<QNetworkAddressEntry>|addressEntries|

$prototypeV2=QNetworkInterface::InterfaceFlags flags() const

$prototypeV2=QString hardwareAddress() const

$prototypeV2=QString humanReadableName() const

$prototypeV2=int index() const

$prototypeV2=bool isValid() const

$prototypeV2=QString name() const

$prototype=QList<QHostAddress> allAddresses ()
$method=|QList<QHostAddress>|allAddresses|

$prototype=QList<QNetworkInterface> allInterfaces ()
$method=|QList<QNetworkInterface>|allInterfaces|

$prototype=static QNetworkInterface interfaceFromIndex ( int index )
$staticMethod=|QNetworkInterface|interfaceFromIndex|int

$prototype=static QNetworkInterface interfaceFromName ( const QString & name )
$staticMethod=|QNetworkInterface|interfaceFromName|const QString &

$extraMethods

#pragma ENDDUMP

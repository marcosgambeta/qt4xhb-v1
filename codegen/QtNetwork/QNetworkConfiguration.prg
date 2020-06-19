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

$prototype=QNetworkConfiguration ()
$internalConstructor=|new1|

$prototype=QNetworkConfiguration ( const QNetworkConfiguration & other )
$internalConstructor=|new2|const QNetworkConfiguration &

/*
[1]QNetworkConfiguration ()
[2]QNetworkConfiguration ( const QNetworkConfiguration & other )
*/

HB_FUNC_STATIC( QNETWORKCONFIGURATION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkConfiguration_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKCONFIGURATION(1) )
  {
    QNetworkConfiguration_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

%% deprecated
$prototypeV2=QString bearerName() const

$prototypeV2=QNetworkConfiguration::BearerType bearerType() const

$prototypeV2=QString bearerTypeName() const

$prototypeV2=QList<QNetworkConfiguration> children() const

$prototypeV2=QString identifier() const

$prototypeV2=bool isRoamingAvailable() const

$prototypeV2=bool isValid() const

$prototypeV2=QString name() const

$prototypeV2=QNetworkConfiguration::Purpose purpose() const

$prototypeV2=QNetworkConfiguration::StateFlags state() const

$prototypeV2=QNetworkConfiguration::Type type() const

$extraMethods

#pragma ENDDUMP

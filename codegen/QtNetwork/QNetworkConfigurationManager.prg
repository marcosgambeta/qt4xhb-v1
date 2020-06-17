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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QNetworkConfigurationManager ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=QList<QNetworkConfiguration> allConfigurations ( QNetworkConfiguration::StateFlags filter = 0 ) const
$method=|QList<QNetworkConfiguration>|allConfigurations|QNetworkConfiguration::StateFlags=0

$prototypeV2=QNetworkConfigurationManager::Capabilities capabilities() const

$prototype=QNetworkConfiguration configurationFromIdentifier ( const QString & identifier ) const
$method=|QNetworkConfiguration|configurationFromIdentifier|const QString &

$prototypeV2=QNetworkConfiguration defaultConfiguration() const

$prototypeV2=bool isOnline() const

$prototypeV2=void updateConfigurations()

$beginSignals
$signal=|configurationAdded(QNetworkConfiguration)
$signal=|configurationChanged(QNetworkConfiguration)
$signal=|configurationRemoved(QNetworkConfiguration)
$signal=|onlineStateChanged(bool)
$signal=|updateCompleted()
$endSignals

#pragma ENDDUMP

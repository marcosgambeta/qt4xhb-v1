%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

$includes

$beginSlotsClass
$signal=|configurationAdded( const QNetworkConfiguration & config )
$signal=|configurationChanged( const QNetworkConfiguration & config )
$signal=|configurationRemoved( const QNetworkConfiguration & config )
$signal=|onlineStateChanged( bool isOnline )
$signal=|updateCompleted()
$endSlotsClass

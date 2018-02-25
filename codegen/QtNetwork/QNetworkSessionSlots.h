%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|closed()
$signal=|error( QNetworkSession::SessionError error )
$signal=|newConfigurationActivated()
$signal=|opened()
$signal=|preferredConfigurationChanged( const QNetworkConfiguration & config, bool isSeamless )
$signal=|stateChanged( QNetworkSession::State state )
$endSlotsClass

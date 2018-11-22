%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

$includes

$beginSlotsClass
$slot=|aboutToReleaseGpuResources()
$slot=|aboutToUseGpuResources()
$slot=|commitDataRequest( QSessionManager & manager )
$slot=|focusChanged( QWidget * old, QWidget * now )
$slot=|fontDatabaseChanged()
$slot=|lastWindowClosed()
$slot=|saveStateRequest( QSessionManager & manager )
$endSlotsClass

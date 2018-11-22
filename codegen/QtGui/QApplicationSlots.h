%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

$includes

#include <QSessionManager>
#include <QWidget>

$beginSlotsClass
$signal=|aboutToReleaseGpuResources()
$signal=|aboutToUseGpuResources()
$signal=|commitDataRequest( QSessionManager & manager )
$signal=|focusChanged( QWidget * old, QWidget * now )
$signal=|fontDatabaseChanged()
$signal=|lastWindowClosed()
$signal=|saveStateRequest( QSessionManager & manager )
$endSlotsClass

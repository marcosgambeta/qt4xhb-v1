%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|activeChanged( bool active )
$slot=|surfaceFormatChanged( const QVideoSurfaceFormat & format )
$slot=|supportedFormatsChanged()
$endSlotsClass

$signalMethod=|activeChanged(bool)
$signalMethod=|surfaceFormatChanged(QVideoSurfaceFormat)
$signalMethod=|supportedFormatsChanged()

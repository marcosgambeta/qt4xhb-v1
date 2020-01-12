%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

$includes

$beginSlotsClass
$slot=|currentLoopChanged( int currentLoop )
$slot=|directionChanged( QAbstractAnimation::Direction newDirection )
$slot=|finished()
$slot=|stateChanged( QAbstractAnimation::State newState, QAbstractAnimation::State oldState )
$endSlotsClass

%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$slot=|started()
$slot=|finished()
$slot=|canceled()
$slot=|paused()
$slot=|resumed()
$slot=|resultReadyAt( int resultIndex )
$slot=|resultsReadyAt( int beginIndex, int endIndex )
$slot=|progressRangeChanged( int minimum, int maximum )
$slot=|progressValueChanged( int progressValue )
$slot=|progressTextChanged( const QString & progressText )
$endSlotsClass

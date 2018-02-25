%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|started()
$signal=|finished()
$signal=|canceled()
$signal=|paused()
$signal=|resumed()
$signal=|resultReadyAt( int resultIndex )
$signal=|resultsReadyAt( int beginIndex, int endIndex )
$signal=|progressRangeChanged( int minimum, int maximum )
$signal=|progressValueChanged( int progressValue )
$signal=|progressTextChanged( const QString & progressText )
$endSlotsClass

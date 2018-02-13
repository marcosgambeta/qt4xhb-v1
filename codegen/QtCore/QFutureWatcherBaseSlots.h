%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void started()
$signal=|void finished()
$signal=|void canceled()
$signal=|void paused()
$signal=|void resumed()
$signal=|void resultReadyAt( int resultIndex )
$signal=|void resultsReadyAt( int beginIndex, int endIndex )
$signal=|void progressRangeChanged( int minimum, int maximum )
$signal=|void progressValueChanged( int progressValue )
$signal=|void progressTextChanged( const QString & progressText )
$endSlotsClass

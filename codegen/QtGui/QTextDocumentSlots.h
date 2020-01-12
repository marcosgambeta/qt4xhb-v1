%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

$includes

$beginSlotsClass
$signal=|blockCountChanged( int newBlockCount )
$signal=|contentsChange( int position, int charsRemoved, int charsAdded )
$signal=|contentsChanged()
$signal=|cursorPositionChanged( const QTextCursor & cursor )
$signal=|documentLayoutChanged()
$signal=|modificationChanged( bool changed )
$signal=|redoAvailable( bool available )
$signal=|undoAvailable( bool available )
$signal=|undoCommandAdded()
$endSlotsClass

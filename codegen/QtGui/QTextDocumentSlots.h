%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

$includes

$beginSlotsClass
$signal=|void blockCountChanged( int newBlockCount )
$signal=|void contentsChange( int position, int charsRemoved, int charsAdded )
$signal=|void contentsChanged()
$signal=|void cursorPositionChanged( const QTextCursor & cursor )
$signal=|void documentLayoutChanged()
$signal=|void modificationChanged( bool changed )
$signal=|void redoAvailable( bool available )
$signal=|void undoAvailable( bool available )
$signal=|void undoCommandAdded()
$endSlotsClass

%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

$includes

$beginSlotsClass
$signal=|canRedoChanged( bool canRedo )
$signal=|canUndoChanged( bool canUndo )
$signal=|cleanChanged( bool clean )
$signal=|indexChanged( int idx )
$signal=|redoTextChanged( const QString & redoText )
$signal=|undoTextChanged( const QString & undoText )
$endSlotsClass

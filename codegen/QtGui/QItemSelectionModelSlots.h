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
$signal=|currentChanged( const QModelIndex & current, const QModelIndex & previous )
$signal=|currentColumnChanged( const QModelIndex & current, const QModelIndex & previous )
$signal=|currentRowChanged( const QModelIndex & current, const QModelIndex & previous )
$signal=|selectionChanged( const QItemSelection & selected, const QItemSelection & deselected )
$endSlotsClass

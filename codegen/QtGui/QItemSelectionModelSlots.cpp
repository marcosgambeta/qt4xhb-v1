%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

$includes

$beginSlotsClass
$slot=|currentChanged( const QModelIndex & current, const QModelIndex & previous )
$slot=|currentColumnChanged( const QModelIndex & current, const QModelIndex & previous )
$slot=|currentRowChanged( const QModelIndex & current, const QModelIndex & previous )
$slot=|selectionChanged( const QItemSelection & selected, const QItemSelection & deselected )
$endSlotsClass

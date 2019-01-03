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
$slot=|closeEditor( QWidget * editor, QAbstractItemDelegate::EndEditHint hint )
$slot=|commitData( QWidget * editor )
$slot=|sizeHintChanged( const QModelIndex & index )
$endSlotsClass

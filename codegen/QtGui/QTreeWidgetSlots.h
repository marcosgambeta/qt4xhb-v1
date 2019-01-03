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
$signal=|currentItemChanged( QTreeWidgetItem * current, QTreeWidgetItem * previous )
$signal=|itemActivated( QTreeWidgetItem * item, int column )
$signal=|itemChanged( QTreeWidgetItem * item, int column )
$signal=|itemClicked( QTreeWidgetItem * item, int column )
$signal=|itemCollapsed( QTreeWidgetItem * item )
$signal=|itemDoubleClicked( QTreeWidgetItem * item, int column )
$signal=|itemEntered( QTreeWidgetItem * item, int column )
$signal=|itemExpanded( QTreeWidgetItem * item )
$signal=|itemPressed( QTreeWidgetItem * item, int column )
$signal=|itemSelectionChanged()
$endSlotsClass

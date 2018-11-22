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
$slot=|actionTriggered( QAction * action )
$slot=|allowedAreasChanged( Qt::ToolBarAreas allowedAreas )
$slot=|iconSizeChanged( const QSize & iconSize )
$slot=|movableChanged( bool movable )
$slot=|orientationChanged( Qt::Orientation orientation )
$slot=|toolButtonStyleChanged( Qt::ToolButtonStyle toolButtonStyle )
$slot=|topLevelChanged( bool topLevel )
$slot=|visibilityChanged( bool visible )
$endSlotsClass

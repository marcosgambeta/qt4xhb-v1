%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

$includes

#include <QWidget>

$beginSlotsClass
$signal=|actionChanged( Qt::DropAction action )
$signal=|targetChanged( QWidget * newTarget )
$endSlotsClass

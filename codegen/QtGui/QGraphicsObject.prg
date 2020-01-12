%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject,QGraphicsItem

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=void grabGesture ( Qt::GestureType gesture, Qt::GestureFlags flags = Qt::GestureFlags() )
$method=|void|grabGesture|Qt::GestureType,Qt::GestureFlags=Qt::GestureFlags()

$prototype=void ungrabGesture ( Qt::GestureType gesture )
$method=|void|ungrabGesture|Qt::GestureType

$beginSignals
$signal=|enabledChanged()
$signal=|opacityChanged()
$signal=|parentChanged()
$signal=|rotationChanged()
$signal=|scaleChanged()
$signal=|visibleChanged()
$signal=|xChanged()
$signal=|yChanged()
$signal=|zChanged()
$endSignals

#pragma ENDDUMP

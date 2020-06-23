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

$beginClassFrom=QGraphicsEffect

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsOpacityEffect ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=qreal opacity() const

$prototypeV2=QBrush opacityMask() const

$prototypeV2=void setOpacity( qreal opacity )

$prototypeV2=void setOpacityMask( const QBrush & mask )

$beginSignals
$signal=|opacityChanged(qreal)
$signal=|opacityMaskChanged(QBrush)
$endSignals

#pragma ENDDUMP

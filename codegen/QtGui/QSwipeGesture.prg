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

$beginClassFrom=QGesture

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=QSwipeGesture::SwipeDirection horizontalDirection() const

$prototype=void setSwipeAngle ( qreal value )
$method=|void|setSwipeAngle|qreal

$prototypeV2=qreal swipeAngle() const

$prototypeV2=QSwipeGesture::SwipeDirection verticalDirection() const

#pragma ENDDUMP

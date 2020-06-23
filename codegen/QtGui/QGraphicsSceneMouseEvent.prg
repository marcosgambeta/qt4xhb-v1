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

$beginClassFrom=QGraphicsSceneEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=Qt::MouseButton button() const

$prototypeV2=QPointF buttonDownPos( Qt::MouseButton button ) const

$prototypeV2=QPointF buttonDownScenePos( Qt::MouseButton button ) const

$prototypeV2=QPoint buttonDownScreenPos( Qt::MouseButton button ) const

$prototypeV2=Qt::MouseButtons buttons() const

$prototypeV2=QPointF lastPos() const

$prototypeV2=QPointF lastScenePos() const

$prototypeV2=QPoint lastScreenPos() const

$prototypeV2=Qt::KeyboardModifiers modifiers() const

$prototypeV2=QPointF pos() const

$prototypeV2=QPointF scenePos() const

$prototypeV2=QPoint screenPos() const

#pragma ENDDUMP

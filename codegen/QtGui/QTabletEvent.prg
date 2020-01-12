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

$beginClassFrom=QInputEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTabletEvent(Type t, const QPoint &pos, const QPoint &globalPos, const QPointF &hiResGlobalPos,int device, int pointerType, qreal pressure, int xTilt, int yTilt,qreal tangentialPressure, qreal rotation, int z,Qt::KeyboardModifiers keyState, qint64 uniqueID)
$constructor=|new|QEvent::Type,const QPoint &,const QPoint &,const QPointF &,int,int,qreal,int,int,qreal,qreal,int,Qt::KeyboardModifiers,qint64

$deleteMethod

$prototype=const QPoint &pos() const
$method=|const QPoint &|pos|

$prototype=const QPoint &globalPos() const
$method=|const QPoint &|globalPos|

$prototype=const QPointF &hiResGlobalPos() const
$method=|const QPointF &|hiResGlobalPos|

$prototype=int x() const
$method=|int|x|

$prototype=int y() const
$method=|int|y|

$prototype=int globalX() const
$method=|int|globalX|

$prototype=int globalY() const
$method=|int|globalY|

$prototype=qreal hiResGlobalX() const
$method=|qreal|hiResGlobalX|

$prototype=qreal hiResGlobalY() const
$method=|qreal|hiResGlobalY|

$prototype=TabletDevice device() const
$method=|QTabletEvent::TabletDevice|device|

$prototype=PointerType pointerType() const
$method=|QTabletEvent::PointerType|pointerType|

$prototype=qint64 uniqueId() const
$method=|qint64|uniqueId|

$prototype=qreal pressure() const
$method=|qreal|pressure|

$prototype=int z() const
$method=|int|z|

$prototype=qreal tangentialPressure() const
$method=|qreal|tangentialPressure|

$prototype=qreal rotation() const
$method=|qreal|rotation|

$prototype=int xTilt() const
$method=|int|xTilt|

$prototype=int yTilt() const
$method=|int|yTilt|

#pragma ENDDUMP

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

#include <QtCore/QMimeData>

$deleteMethod

$prototypeV2=void acceptProposedAction()

$prototypeV2=Qt::MouseButtons buttons() const

$prototypeV2=Qt::DropAction dropAction() const

$prototypeV2=const QMimeData * mimeData() const

$prototypeV2=Qt::KeyboardModifiers modifiers() const

$prototypeV2=QPointF pos() const

$prototypeV2=Qt::DropActions possibleActions() const

$prototypeV2=Qt::DropAction proposedAction() const

$prototypeV2=QPointF scenePos() const

$prototypeV2=QPoint screenPos() const

$prototypeV2=void setDropAction( Qt::DropAction action )

$prototypeV2=QWidget * source() const

#pragma ENDDUMP

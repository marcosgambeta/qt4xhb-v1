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

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QInputEvent(Type type, Qt::KeyboardModifiers modifiers = Qt::NoModifier)
$constructor=|new|QEvent::Type,Qt::KeyboardModifiers=Qt::NoModifier

$deleteMethod

$prototypeV2=Qt::KeyboardModifiers modifiers() const

$prototypeV2=void setModifiers( Qt::KeyboardModifiers amodifiers )

#pragma ENDDUMP

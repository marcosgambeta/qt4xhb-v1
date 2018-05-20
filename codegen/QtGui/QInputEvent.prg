%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClassFrom=QEvent

   METHOD new
   METHOD delete
   METHOD modifiers
   METHOD setModifiers

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QInputEvent(Type type, Qt::KeyboardModifiers modifiers = Qt::NoModifier)
$constructor=|new|QEvent::Type,Qt::KeyboardModifiers=Qt::NoModifier

$deleteMethod

$prototype=Qt::KeyboardModifiers modifiers() const
$method=|Qt::KeyboardModifiers|modifiers|

$prototype=void setModifiers(Qt::KeyboardModifiers amodifiers)
$method=|void|setModifiers|Qt::KeyboardModifiers

#pragma ENDDUMP

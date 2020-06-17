%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtScript

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtScript/QScriptValue>
#include <QtScript/QScriptEngine>

$deleteMethod

$prototype=QScriptValue argument ( int index ) const
$method=|QScriptValue|argument|int

$prototypeV2=int argumentCount() const

$prototypeV2=QScriptContext * context() const

$prototypeV2=QScriptEngine * engine() const

$prototypeV2=QScriptValue thisObject() const

$extraMethods

#pragma ENDDUMP

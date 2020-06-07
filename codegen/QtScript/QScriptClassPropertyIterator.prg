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

#include <QtScript/QScriptString>

$deleteMethod

$prototype=virtual QScriptValue::PropertyFlags flags () const
$virtualMethod=|QScriptValue::PropertyFlags|flags|

$prototypeV2=virtual bool hasNext() const = 0

$prototypeV2=virtual bool hasPrevious() const = 0

$prototype=virtual uint id () const
$virtualMethod=|uint|id|

$prototype=virtual QScriptString name () const = 0
$virtualMethod=|QScriptString|name|

$prototype=virtual void next () = 0
$virtualMethod=|void|next|

$prototype=QScriptValue object () const
$method=|QScriptValue|object|

$prototype=virtual void previous () = 0
$virtualMethod=|void|previous|

$prototype=virtual void toBack () = 0
$virtualMethod=|void|toBack|

$prototype=virtual void toFront () = 0
$virtualMethod=|void|toFront|

$extraMethods

#pragma ENDDUMP

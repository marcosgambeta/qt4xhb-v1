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

$prototype=QScriptValueIterator ( const QScriptValue & object )
$constructor=|new|const QScriptValue &

$deleteMethod

$prototype=QScriptValue::PropertyFlags flags () const
$method=|QScriptValue::PropertyFlags|flags|

$prototypeV2=bool hasNext() const

$prototypeV2=bool hasPrevious() const

$prototype=QString name () const
$method=|QString|name|

$prototype=void next ()
$method=|void|next|

$prototype=void previous ()
$method=|void|previous|

$prototype=void remove ()
$method=|void|remove|

$prototype=QScriptString scriptName () const
$method=|QScriptString|scriptName|

$prototype=void setValue ( const QScriptValue & value )
$method=|void|setValue|const QScriptValue &

$prototype=void toBack ()
$method=|void|toBack|

$prototype=void toFront ()
$method=|void|toFront|

$prototype=QScriptValue value () const
$method=|QScriptValue|value|

$extraMethods

#pragma ENDDUMP

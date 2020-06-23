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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtScript/QScriptValue>

$deleteMethod

$prototypeV2=QScriptValue setupPackage( const QString & key, QScriptEngine * engine ) const

$prototypeV2=virtual void initialize( const QString & key, QScriptEngine * engine ) = 0

$prototypeV2=virtual QStringList keys() const = 0

#pragma ENDDUMP

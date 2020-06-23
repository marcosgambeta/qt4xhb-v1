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

#include <QtScript/QScriptEngine>

$prototype=QScriptEngineAgent ( QScriptEngine * engine )
$constructor=|new|QScriptEngine *

$deleteMethod

$prototypeV2=virtual void contextPop()

$prototypeV2=virtual void contextPush()

$prototypeV2=QScriptEngine * engine() const

$prototypeV2=virtual void exceptionCatch( qint64 scriptId, const QScriptValue & exception )

$prototypeV2=virtual void exceptionThrow( qint64 scriptId, const QScriptValue & exception, bool hasHandler )

$prototype=virtual QVariant extension ( Extension extension, const QVariant & argument = QVariant() )
$virtualMethod=|QVariant|extension|QScriptEngineAgent::Extension,const QVariant &=QVariant()

$prototypeV2=virtual void functionEntry( qint64 scriptId )

$prototypeV2=virtual void functionExit( qint64 scriptId, const QScriptValue & returnValue )

$prototypeV2=virtual void positionChange( qint64 scriptId, int lineNumber, int columnNumber )

$prototypeV2=virtual void scriptLoad( qint64 id, const QString & program, const QString & fileName, int baseLineNumber )

$prototypeV2=virtual void scriptUnload( qint64 id )

$prototypeV2=virtual bool supportsExtension( QScriptEngineAgent::Extension extension ) const

$extraMethods

#pragma ENDDUMP

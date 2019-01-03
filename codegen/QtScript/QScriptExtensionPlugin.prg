%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

#include <QScriptValue>

$deleteMethod

$prototype=QScriptValue setupPackage ( const QString & key, QScriptEngine * engine ) const
$method=|QScriptValue|setupPackage|const QString &,QScriptEngine *

$prototype=virtual void initialize ( const QString & key, QScriptEngine * engine ) = 0
$virtualMethod=|void|initialize|const QString &,QScriptEngine *

$prototype=virtual QStringList keys () const = 0
$virtualMethod=|QStringList|keys|

#pragma ENDDUMP

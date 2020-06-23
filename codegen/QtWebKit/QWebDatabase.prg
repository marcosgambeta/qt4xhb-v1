%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtWebKit

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWebKit/QWebSecurityOrigin>

$prototype=QWebDatabase ( const QWebDatabase & other )
$constructor=|new|const QWebDatabase &

$deleteMethod

$prototypeV2=QString displayName() const

$prototypeV2=qint64 expectedSize() const

$prototypeV2=QString fileName() const

$prototypeV2=QString name() const

$prototypeV2=QWebSecurityOrigin origin() const

$prototypeV2=qint64 size() const

$prototypeV2=static void removeAllDatabases()

$prototypeV2=static void removeDatabase( const QWebDatabase & db )

$extraMethods

#pragma ENDDUMP

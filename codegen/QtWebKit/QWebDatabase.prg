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

$prototype=qint64 expectedSize () const
$method=|qint64|expectedSize|

$prototypeV2=QString fileName() const

$prototypeV2=QString name() const

$prototype=QWebSecurityOrigin origin () const
$method=|QWebSecurityOrigin|origin|

$prototype=qint64 size () const
$method=|qint64|size|

$prototype=static void removeAllDatabases ()
$staticMethod=|void|removeAllDatabases|

$prototype=static void removeDatabase ( const QWebDatabase & db )
$staticMethod=|void|removeDatabase|const QWebDatabase &

$extraMethods

#pragma ENDDUMP

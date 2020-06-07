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

#include <QtCore/QStringList>
#include <QtWebKit/QWebDatabase>

$prototype=QWebSecurityOrigin ( const QWebSecurityOrigin & other )
$constructor=|new|const QWebSecurityOrigin &

$deleteMethod

$prototype=qint64 databaseQuota () const
$method=|qint64|databaseQuota|

$prototype=qint64 databaseUsage () const
$method=|qint64|databaseUsage|

$prototype=QList<QWebDatabase> databases () const
$method=|QList<QWebDatabase>|databases|

$prototypeV2=QString host() const

$prototypeV2=int port() const

$prototypeV2=QString scheme() const

$prototype=void setDatabaseQuota ( qint64 quota )
$method=|void|setDatabaseQuota|qint64

$prototype=static void addLocalScheme ( const QString & scheme )
$staticMethod=|void|addLocalScheme|const QString &

$prototype=QList<QWebSecurityOrigin> allOrigins ()
$method=|QList<QWebSecurityOrigin>|allOrigins|

$prototype=static QStringList localSchemes ()
$staticMethod=|QStringList|localSchemes|

$prototype=static void removeLocalScheme ( const QString & scheme )
$staticMethod=|void|removeLocalScheme|const QString &

$extraMethods

#pragma ENDDUMP

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

$prototypeV2=qint64 databaseQuota() const

$prototypeV2=qint64 databaseUsage() const

$prototypeV2=QList<QWebDatabase> databases() const

$prototypeV2=QString host() const

$prototypeV2=int port() const

$prototypeV2=QString scheme() const

$prototypeV2=void setDatabaseQuota( qint64 quota )

$prototypeV2=static void addLocalScheme( const QString & scheme )

$prototypeV2=QList<QWebSecurityOrigin> allOrigins()

$prototypeV2=static QStringList localSchemes()

$prototypeV2=static void removeLocalScheme( const QString & scheme )

$extraMethods

#pragma ENDDUMP

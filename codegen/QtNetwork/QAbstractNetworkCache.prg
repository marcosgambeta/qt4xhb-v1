%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual qint64 cacheSize() const = 0

$prototypeV2=virtual QIODevice * data( const QUrl & url ) = 0

$prototypeV2=virtual void insert( QIODevice * device ) = 0

$prototypeV2=virtual QNetworkCacheMetaData metaData( const QUrl & url ) = 0

$prototypeV2=virtual QIODevice * prepare( const QNetworkCacheMetaData & metaData ) = 0

$prototypeV2=virtual bool remove( const QUrl & url ) = 0

$prototypeV2=virtual void updateMetaData( const QNetworkCacheMetaData & metaData ) = 0

$prototypeV2=virtual void clear() = 0

#pragma ENDDUMP

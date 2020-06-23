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

$beginClassFrom=QAbstractNetworkCache

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QNetworkDiskCache ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=QString cacheDirectory() const

$prototypeV2=QNetworkCacheMetaData fileMetaData( const QString & fileName ) const

$prototypeV2=qint64 maximumCacheSize() const

$prototypeV2=void setCacheDirectory( const QString & cacheDir )

$prototypeV2=void setMaximumCacheSize( qint64 size )

$prototypeV2=virtual qint64 cacheSize() const

$prototypeV2=virtual QIODevice * data( const QUrl & url )

$prototypeV2=virtual void insert( QIODevice * device )

$prototypeV2=virtual QNetworkCacheMetaData metaData( const QUrl & url )

$prototypeV2=virtual QIODevice * prepare( const QNetworkCacheMetaData & metaData )

$prototypeV2=virtual bool remove( const QUrl & url )

$prototypeV2=virtual void updateMetaData( const QNetworkCacheMetaData & metaData )

$prototypeV2=virtual void clear()

#pragma ENDDUMP

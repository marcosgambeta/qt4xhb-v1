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

$prototype=QNetworkCacheMetaData fileMetaData ( const QString & fileName ) const
$method=|QNetworkCacheMetaData|fileMetaData|const QString &

$prototype=qint64 maximumCacheSize () const
$method=|qint64|maximumCacheSize|

$prototype=void setCacheDirectory ( const QString & cacheDir )
$method=|void|setCacheDirectory|const QString &

$prototype=void setMaximumCacheSize ( qint64 size )
$method=|void|setMaximumCacheSize|qint64

$prototype=virtual qint64 cacheSize () const
$virtualMethod=|qint64|cacheSize|

$prototype=virtual QIODevice * data ( const QUrl & url )
$virtualMethod=|QIODevice *|data|const QUrl &

$prototype=virtual void insert ( QIODevice * device )
$virtualMethod=|void|insert|QIODevice *

$prototype=virtual QNetworkCacheMetaData metaData ( const QUrl & url )
$virtualMethod=|QNetworkCacheMetaData|metaData|const QUrl &

$prototype=virtual QIODevice * prepare ( const QNetworkCacheMetaData & metaData )
$virtualMethod=|QIODevice *|prepare|const QNetworkCacheMetaData &

$prototype=virtual bool remove ( const QUrl & url )
$virtualMethod=|bool|remove|const QUrl &

$prototype=virtual void updateMetaData ( const QNetworkCacheMetaData & metaData )
$virtualMethod=|void|updateMetaData|const QNetworkCacheMetaData &

$prototype=virtual void clear ()
$virtualMethod=|void|clear|

#pragma ENDDUMP

%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=virtual qint64 cacheSize () const = 0
$virtualMethod=|qint64|cacheSize|

$prototype=virtual QIODevice * data ( const QUrl & url ) = 0
$virtualMethod=|QIODevice *|data|const QUrl &

$prototype=virtual void insert ( QIODevice * device ) = 0
$virtualMethod=|void|insert|QIODevice *

$prototype=virtual QNetworkCacheMetaData metaData ( const QUrl & url ) = 0
$virtualMethod=|QNetworkCacheMetaData|metaData|const QUrl &

$prototype=virtual QIODevice * prepare ( const QNetworkCacheMetaData & metaData ) = 0
$virtualMethod=|QIODevice *|prepare|const QNetworkCacheMetaData &

$prototype=virtual bool remove ( const QUrl & url ) = 0
$virtualMethod=|bool|remove|const QUrl &

$prototype=virtual void updateMetaData ( const QNetworkCacheMetaData & metaData ) = 0
$virtualMethod=|void|updateMetaData|const QNetworkCacheMetaData &

$prototype=virtual void clear () = 0
$virtualMethod=|void|clear|

#pragma ENDDUMP

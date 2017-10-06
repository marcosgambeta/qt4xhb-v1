$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIODEVICE
REQUEST QNETWORKCACHEMETADATA
#endif

CLASS QAbstractNetworkCache INHERIT QObject

   METHOD delete
   METHOD cacheSize
   METHOD data
   METHOD insert
   METHOD metaData
   METHOD prepare
   METHOD remove
   METHOD updateMetaData
   METHOD clear

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractNetworkCache>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual qint64 cacheSize () const = 0
*/
$virtualMethod=|qint64|cacheSize|

/*
virtual QIODevice * data ( const QUrl & url ) = 0
*/
$virtualMethod=|QIODevice *|data|const QUrl &

/*
virtual void insert ( QIODevice * device ) = 0
*/
$virtualMethod=|void|insert|QIODevice *

/*
virtual QNetworkCacheMetaData metaData ( const QUrl & url ) = 0
*/
$virtualMethod=|QNetworkCacheMetaData|metaData|const QUrl &

/*
virtual QIODevice * prepare ( const QNetworkCacheMetaData & metaData ) = 0
*/
$virtualMethod=|QIODevice *|prepare|const QNetworkCacheMetaData &

/*
virtual bool remove ( const QUrl & url ) = 0
*/
$virtualMethod=|bool|remove|const QUrl &

/*
virtual void updateMetaData ( const QNetworkCacheMetaData & metaData ) = 0
*/
$virtualMethod=|void|updateMetaData|const QNetworkCacheMetaData &

/*
virtual void clear () = 0
*/
$virtualMethod=|void|clear|

#pragma ENDDUMP

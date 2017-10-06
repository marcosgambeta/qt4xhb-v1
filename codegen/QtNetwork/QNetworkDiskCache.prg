$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QNETWORKCACHEMETADATA
REQUEST QIODEVICE
#endif

CLASS QNetworkDiskCache INHERIT QAbstractNetworkCache

   METHOD new
   METHOD delete
   METHOD cacheDirectory
   METHOD fileMetaData
   METHOD maximumCacheSize
   METHOD setCacheDirectory
   METHOD setMaximumCacheSize
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

#include <QNetworkDiskCache>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QNetworkDiskCache ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
QString cacheDirectory () const
*/
$method=|QString|cacheDirectory|

/*
QNetworkCacheMetaData fileMetaData ( const QString & fileName ) const
*/
$method=|QNetworkCacheMetaData|fileMetaData|const QString &

/*
qint64 maximumCacheSize () const
*/
$method=|qint64|maximumCacheSize|

/*
void setCacheDirectory ( const QString & cacheDir )
*/
$method=|void|setCacheDirectory|const QString &

/*
void setMaximumCacheSize ( qint64 size )
*/
$method=|void|setMaximumCacheSize|qint64

/*
virtual qint64 cacheSize () const
*/
$virtualMethod=|qint64|cacheSize|

/*
virtual QIODevice * data ( const QUrl & url )
*/
$virtualMethod=|QIODevice *|data|const QUrl &

/*
virtual void insert ( QIODevice * device )
*/
$virtualMethod=|void|insert|QIODevice *

/*
virtual QNetworkCacheMetaData metaData ( const QUrl & url )
*/
$virtualMethod=|QNetworkCacheMetaData|metaData|const QUrl &

/*
virtual QIODevice * prepare ( const QNetworkCacheMetaData & metaData )
*/
$virtualMethod=|QIODevice *|prepare|const QNetworkCacheMetaData &

/*
virtual bool remove ( const QUrl & url )
*/
$virtualMethod=|bool|remove|const QUrl &

/*
virtual void updateMetaData ( const QNetworkCacheMetaData & metaData )
*/
$virtualMethod=|void|updateMetaData|const QNetworkCacheMetaData &

/*
virtual void clear ()
*/
$virtualMethod=|void|clear|

#pragma ENDDUMP

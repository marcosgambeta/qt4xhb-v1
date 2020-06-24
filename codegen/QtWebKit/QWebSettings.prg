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

#include <QtCore/QUrl>

$prototypeV2=QString defaultTextEncoding() const

$prototypeV2=QString fontFamily( QWebSettings::FontFamily which ) const

$prototypeV2=int fontSize( QWebSettings::FontSize type ) const

$prototypeV2=QString localStoragePath() const

$prototypeV2=void resetAttribute( QWebSettings::WebAttribute attribute )

$prototypeV2=void resetFontFamily( QWebSettings::FontFamily which )

$prototypeV2=void resetFontSize( QWebSettings::FontSize type )

$prototypeV2=void setAttribute( QWebSettings::WebAttribute attribute, bool on )

$prototypeV2=void setDefaultTextEncoding( const QString & encoding )

$prototypeV2=void setFontFamily( QWebSettings::FontFamily which, const QString & family )

$prototypeV2=void setFontSize( QWebSettings::FontSize type, int size )

$prototypeV2=void setLocalStoragePath( const QString & path )

$prototypeV2=void setUserStyleSheetUrl( const QUrl & location )

$prototypeV2=bool testAttribute( QWebSettings::WebAttribute attribute ) const

$prototypeV2=QUrl userStyleSheetUrl() const

$prototypeV2=static void clearIconDatabase()

$prototypeV2=static void clearMemoryCaches()

$prototypeV2=static void enablePersistentStorage( const QString & path = QString() )

$prototypeV2=static QWebSettings * globalSettings()

$prototypeV2=static QString iconDatabasePath()

$prototypeV2=static QIcon iconForUrl( const QUrl & url )

$prototypeV2=static int maximumPagesInCache()

$prototypeV2=static qint64 offlineStorageDefaultQuota()

$prototypeV2=static QString offlineStoragePath()

$prototypeV2=static QString offlineWebApplicationCachePath()

$prototypeV2=static qint64 offlineWebApplicationCacheQuota()

$prototypeV2=static void setIconDatabasePath( const QString & path )

$prototypeV2=static void setMaximumPagesInCache( int pages )

$prototypeV2=static void setObjectCacheCapacities( int cacheMinDeadCapacity, int cacheMaxDead, int totalCapacity )

$prototypeV2=static void setOfflineStorageDefaultQuota( qint64 maximumSize )

$prototypeV2=static void setOfflineStoragePath( const QString & path )

$prototypeV2=static void setOfflineWebApplicationCachePath( const QString & path )

$prototypeV2=static void setOfflineWebApplicationCacheQuota( qint64 maximumSize )

$prototypeV2=static void setWebGraphic( QWebSettings::WebGraphic type, const QPixmap & graphic )

$prototypeV2=static QPixmap webGraphic( QWebSettings::WebGraphic type )

$extraMethods

#pragma ENDDUMP

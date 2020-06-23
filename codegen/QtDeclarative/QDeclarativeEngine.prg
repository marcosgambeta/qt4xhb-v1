%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtDeclarative

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>
#include <QtNetwork/QNetworkAccessManager>
#include <QtDeclarative/QDeclarativeContext>

$prototype=QDeclarativeEngine ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototypeV2=void addImageProvider( const QString & providerId, QDeclarativeImageProvider * provider )

$prototypeV2=void addImportPath( const QString & path )

$prototypeV2=void addPluginPath( const QString & path )

$prototypeV2=QUrl baseUrl() const

$prototypeV2=void clearComponentCache()

$prototypeV2=QDeclarativeImageProvider * imageProvider( const QString & providerId ) const

$prototypeV2=QStringList importPathList() const

$prototypeV2=bool importPlugin( const QString & filePath, const QString & uri, QString * errorString )

$prototypeV2=QNetworkAccessManager * networkAccessManager() const

$prototypeV2=QDeclarativeNetworkAccessManagerFactory * networkAccessManagerFactory() const

$prototypeV2=QString offlineStoragePath() const

$prototypeV2=bool outputWarningsToStandardError() const

$prototypeV2=QStringList pluginPathList() const

$prototypeV2=void removeImageProvider( const QString & providerId )

$prototypeV2=QDeclarativeContext * rootContext() const

$prototypeV2=void setBaseUrl( const QUrl & url )

$prototypeV2=void setImportPathList( const QStringList & paths )

$prototypeV2=void setNetworkAccessManagerFactory( QDeclarativeNetworkAccessManagerFactory * factory )

$prototypeV2=void setOfflineStoragePath( const QString & dir )

$prototypeV2=void setOutputWarningsToStandardError( bool enabled )

$prototypeV2=void setPluginPathList( const QStringList & paths )

$prototypeV2=static QDeclarativeContext * contextForObject( const QObject * object )

$prototypeV2=static QDeclarativeEngine::ObjectOwnership objectOwnership( QObject * object )

$prototypeV2=static void setContextForObject( QObject * object, QDeclarativeContext * context )

$prototypeV2=static void setObjectOwnership( QObject * object, QDeclarativeEngine::ObjectOwnership ownership )

$beginSignals
$signal=|quit()
$signal=|warnings(QList<QDeclarativeError>)
$endSignals

#pragma ENDDUMP

%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=ActiveQt

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

$prototypeV2=virtual QUuid appID() const

$prototypeV2=virtual QUuid classID( const QString & key ) const

$prototypeV2=virtual QObject * createObject( const QString & key ) = 0

$prototypeV2=virtual QUuid eventsID( const QString & key ) const

$prototypeV2=virtual QString exposeToSuperClass( const QString & key ) const

$prototypeV2=virtual QStringList featureList() const = 0

$prototypeV2=virtual bool hasStockEvents( const QString & key ) const

$prototypeV2=virtual QUuid interfaceID( const QString & key ) const

$prototypeV2=virtual bool isService() const

$prototypeV2=virtual const QMetaObject * metaObject( const QString & key ) const = 0

$prototype=virtual void registerClass ( const QString & key, QSettings * settings ) const
$virtualMethod=|void|registerClass|const QString &,QSettings *

$prototypeV2=virtual bool stayTopLevel( const QString & key ) const

$prototypeV2=virtual QUuid typeLibID() const

$prototype=virtual void unregisterClass ( const QString & key, QSettings * settings ) const
$virtualMethod=|void|unregisterClass|const QString &,QSettings *

$prototype=virtual bool validateLicenseKey ( const QString & key, const QString & licenseKey ) const
$virtualMethod=|bool|validateLicenseKey|const QString &,const QString &

$prototypeV2=static bool isServer()

$prototypeV2=static bool registerActiveObject( QObject * object )

$prototypeV2=static QString serverDirPath()

$prototypeV2=static QString serverFilePath()

$prototype=static bool startServer ( ServerType type = MultipleInstances )
$staticMethod=|bool|startServer|QAxFactory::ServerType=QAxFactory::MultipleInstances

$prototypeV2=static bool stopServer()

#pragma ENDDUMP

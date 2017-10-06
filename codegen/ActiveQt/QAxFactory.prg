$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QUUID
REQUEST QOBJECT
REQUEST QMETAOBJECT
#endif

CLASS QAxFactory INHERIT QObject

   METHOD delete
   METHOD appID
   METHOD classID
   METHOD createObject
   METHOD eventsID
   METHOD exposeToSuperClass
   METHOD featureList
   METHOD hasStockEvents
   METHOD interfaceID
   METHOD isService
   METHOD metaObject
   METHOD registerClass
   METHOD stayTopLevel
   METHOD typeLibID
   METHOD unregisterClass
   METHOD validateLicenseKey
   METHOD isServer
   METHOD registerActiveObject
   METHOD serverDirPath
   METHOD serverFilePath
   METHOD startServer
   METHOD stopServer

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAxFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QUuid appID () const
*/
$virtualMethod=|QUuid|appID|

/*
virtual QUuid classID ( const QString & key ) const
*/
$virtualMethod=|QUuid|classID|const QString &

/*
virtual QObject * createObject ( const QString & key ) = 0
*/
$virtualMethod=|QObject *|createObject|const QString &

/*
virtual QUuid eventsID ( const QString & key ) const
*/
$virtualMethod=|QUuid|eventsID|const QString &

/*
virtual QString exposeToSuperClass ( const QString & key ) const
*/
$virtualMethod=|QString|exposeToSuperClass|const QString &

/*
virtual QStringList featureList () const = 0
*/
$virtualMethod=|QStringList|featureList|

/*
virtual bool hasStockEvents ( const QString & key ) const
*/
$virtualMethod=|bool|hasStockEvents|const QString &

/*
virtual QUuid interfaceID ( const QString & key ) const
*/
$virtualMethod=|QUuid|interfaceID|const QString &

/*
virtual bool isService () const
*/
$virtualMethod=|bool|isService|

/*
virtual const QMetaObject * metaObject ( const QString & key ) const = 0
*/
$virtualMethod=|const QMetaObject *|metaObject|const QString &

/*
virtual void registerClass ( const QString & key, QSettings * settings ) const
*/
$virtualMethod=|void|registerClass|const QString &,QSettings *

/*
virtual bool stayTopLevel ( const QString & key ) const
*/
$virtualMethod=|bool|stayTopLevel|const QString &

/*
virtual QUuid typeLibID () const
*/
$virtualMethod=|QUuid|typeLibID|

/*
virtual void unregisterClass ( const QString & key, QSettings * settings ) const
*/
$virtualMethod=|void|unregisterClass|const QString &,QSettings *

/*
virtual bool validateLicenseKey ( const QString & key, const QString & licenseKey ) const
*/
$virtualMethod=|bool|validateLicenseKey|const QString &,const QString &

/*
static bool isServer ()
*/
$staticMethod=|bool|isServer|

/*
static bool registerActiveObject ( QObject * object )
*/
$staticMethod=|bool|registerActiveObject|QObject *

/*
static QString serverDirPath ()
*/
$staticMethod=|QString|serverDirPath|

/*
static QString serverFilePath ()
*/
$staticMethod=|QString|serverFilePath|

/*
static bool startServer ( ServerType type = MultipleInstances )
*/
$staticMethod=|bool|startServer|QAxFactory::ServerType=QAxFactory::MultipleInstances

/*
static bool stopServer ()
*/
$staticMethod=|bool|stopServer|

#pragma ENDDUMP

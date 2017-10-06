$header

#include "hbclass.ch"

CLASS QDesktopServices

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD displayName
   METHOD openUrl
   METHOD setUrlHandler
   METHOD storageLocation
   METHOD unsetUrlHandler

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesktopServices>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
static QString displayName ( StandardLocation type )
*/
$staticMethod=|QString|displayName|QDesktopServices::StandardLocation

/*
static bool openUrl ( const QUrl & url )
*/
$staticMethod=|bool|openUrl|const QUrl &

/*
static void setUrlHandler ( const QString & scheme, QObject * receiver, const char * method )
*/
$staticMethod=|void|setUrlHandler|const QString &,QObject *,const char *

/*
static QString storageLocation ( StandardLocation type )
*/
$staticMethod=|QString|storageLocation|QDesktopServices::StandardLocation

/*
static void unsetUrlHandler ( const QString & scheme )
*/
$staticMethod=|void|unsetUrlHandler|const QString &

$extraMethods

#pragma ENDDUMP

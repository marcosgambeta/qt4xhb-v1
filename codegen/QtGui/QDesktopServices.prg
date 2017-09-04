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
QString displayName ( StandardLocation type )
*/
HB_FUNC_STATIC( QDESKTOPSERVICES_DISPLAYNAME )
{
  RQSTRING( QDesktopServices::displayName ( (QDesktopServices::StandardLocation) hb_parni(1) ) );
}

/*
bool openUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QDESKTOPSERVICES_OPENURL )
{
  RBOOL( QDesktopServices::openUrl ( *PQURL(1) ) );
}

/*
void setUrlHandler ( const QString & scheme, QObject * receiver, const char * method )
*/
HB_FUNC_STATIC( QDESKTOPSERVICES_SETURLHANDLER )
{
  QDesktopServices::setUrlHandler ( PQSTRING(1), PQOBJECT(2), (const char *) hb_parc(3) );
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString storageLocation ( StandardLocation type )
*/
HB_FUNC_STATIC( QDESKTOPSERVICES_STORAGELOCATION )
{
  RQSTRING( QDesktopServices::storageLocation ( (QDesktopServices::StandardLocation) hb_parni(1) ) );
}

/*
void unsetUrlHandler ( const QString & scheme )
*/
HB_FUNC_STATIC( QDESKTOPSERVICES_UNSETURLHANDLER )
{
  QDesktopServices::unsetUrlHandler ( PQSTRING(1) );
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP

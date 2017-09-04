/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

PROCEDURE destroyObject () CLASS QDesktopServices
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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

HB_FUNC_STATIC( QDESKTOPSERVICES_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDESKTOPSERVICES_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDESKTOPSERVICES_NEWFROM );
}

HB_FUNC_STATIC( QDESKTOPSERVICES_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDESKTOPSERVICES_NEWFROM );
}

HB_FUNC_STATIC( QDESKTOPSERVICES_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDESKTOPSERVICES_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP

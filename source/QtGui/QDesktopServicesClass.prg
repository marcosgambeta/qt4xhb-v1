/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDesktopServices

   DATA pointer
   DATA class_id INIT Class_Id_QDesktopServices
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
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"



/*
QString displayName ( StandardLocation type )
*/
HB_FUNC_STATIC( QDESKTOPSERVICES_DISPLAYNAME )
{
  int par1 = hb_parni(1);
  QString str1 = QDesktopServices::displayName (  (QDesktopServices::StandardLocation) par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
bool openUrl ( const QUrl & url )
*/
HB_FUNC_STATIC( QDESKTOPSERVICES_OPENURL )
{
  QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  hb_retl( QDesktopServices::openUrl ( *par1 ) );
}


/*
void setUrlHandler ( const QString & scheme, QObject * receiver, const char * method )
*/
HB_FUNC_STATIC( QDESKTOPSERVICES_SETURLHANDLER )
{
  QObject * par2 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  const char * par3 = hb_parc(3);
  QDesktopServices::setUrlHandler ( PQSTRING(1), par2,  (const char *) par3 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString storageLocation ( StandardLocation type )
*/
HB_FUNC_STATIC( QDESKTOPSERVICES_STORAGELOCATION )
{
  int par1 = hb_parni(1);
  QString str1 = QDesktopServices::storageLocation (  (QDesktopServices::StandardLocation) par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
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

  hb_itemReturn( self );
}


#pragma ENDDUMP

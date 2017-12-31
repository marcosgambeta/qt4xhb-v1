/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QNETWORKPROXY
#endif

CLASS QNetworkProxyFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD queryProxy
   METHOD proxyForQuery
   METHOD setApplicationProxyFactory
   METHOD setUseSystemConfiguration
   METHOD systemProxyForQuery

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QNetworkProxyFactory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QNetworkProxyFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QNETWORKPROXYFACTORY_DELETE )
{
  QNetworkProxyFactory * obj = (QNetworkProxyFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QList<QNetworkProxy> queryProxy ( const QNetworkProxyQuery & query = QNetworkProxyQuery() ) = 0
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_QUERYPROXY )
{
  QNetworkProxyFactory * obj = (QNetworkProxyFactory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QNetworkProxyQuery par1 = ISNIL(1)? QNetworkProxyQuery() : *(QNetworkProxyQuery *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QList<QNetworkProxy> list = obj->queryProxy ( par1 );
    PHB_DYNS pDynSym;
    pDynSym = hb_dynsymFindName( "QNETWORKPROXY" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QNetworkProxy *) new QNetworkProxy ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QList<QNetworkProxy> proxyForQuery ( const QNetworkProxyQuery & query )
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_PROXYFORQUERY )
{
  QList<QNetworkProxy> list = QNetworkProxyFactory::proxyForQuery ( *PQNETWORKPROXYQUERY(1) );
  PHB_DYNS pDynSym;
  pDynSym = hb_dynsymFindName( "QNETWORKPROXY" );
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      hb_vmPushDynSym( pDynSym );
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QNetworkProxy *) new QNetworkProxy ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

/*
static void setApplicationProxyFactory ( QNetworkProxyFactory * factory )
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_SETAPPLICATIONPROXYFACTORY )
{
    if( ISNUMPAR(1) && ISQNETWORKPROXYFACTORY(1) )
  {
      QNetworkProxyFactory::setApplicationProxyFactory ( PQNETWORKPROXYFACTORY(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static void setUseSystemConfiguration ( bool enable )
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_SETUSESYSTEMCONFIGURATION )
{
    if( ISNUMPAR(1) && ISLOG(1) )
  {
      QNetworkProxyFactory::setUseSystemConfiguration ( PBOOL(1) );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QList<QNetworkProxy> systemProxyForQuery ( const QNetworkProxyQuery & query = QNetworkProxyQuery() )
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_SYSTEMPROXYFORQUERY )
{
  QNetworkProxyQuery par1 = ISNIL(1)? QNetworkProxyQuery() : *(QNetworkProxyQuery *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QList<QNetworkProxy> list = QNetworkProxyFactory::systemProxyForQuery ( par1 );
  PHB_DYNS pDynSym;
  pDynSym = hb_dynsymFindName( "QNETWORKPROXY" );
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      hb_vmPushDynSym( pDynSym );
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QNetworkProxy *) new QNetworkProxy ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      PHB_ITEM pDestroy = hb_itemNew( NULL );
      hb_itemPutL( pDestroy, true );
      hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
      hb_itemRelease( pDestroy );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

HB_FUNC_STATIC( QNETWORKPROXYFACTORY_NEWFROM )
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

HB_FUNC_STATIC( QNETWORKPROXYFACTORY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QNETWORKPROXYFACTORY_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKPROXYFACTORY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QNETWORKPROXYFACTORY_NEWFROM );
}

HB_FUNC_STATIC( QNETWORKPROXYFACTORY_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QNETWORKPROXYFACTORY_SETSELFDESTRUCTION )
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

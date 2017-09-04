$header

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
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QNETWORKPROXY" );
    #else
    pDynSym = hb_dynsymFindName( "QNETWORKPROXY" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QNETWORKPROXY" );
  #else
  pDynSym = hb_dynsymFindName( "QNETWORKPROXY" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
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
void setApplicationProxyFactory ( QNetworkProxyFactory * factory )
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_SETAPPLICATIONPROXYFACTORY )
{
  QNetworkProxyFactory::setApplicationProxyFactory ( PQNETWORKPROXYFACTORY(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setUseSystemConfiguration ( bool enable )
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_SETUSESYSTEMCONFIGURATION )
{
  QNetworkProxyFactory::setUseSystemConfiguration ( PBOOL(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QList<QNetworkProxy> systemProxyForQuery ( const QNetworkProxyQuery & query = QNetworkProxyQuery() )
*/
HB_FUNC_STATIC( QNETWORKPROXYFACTORY_SYSTEMPROXYFORQUERY )
{
  QNetworkProxyQuery par1 = ISNIL(1)? QNetworkProxyQuery() : *(QNetworkProxyQuery *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QList<QNetworkProxy> list = QNetworkProxyFactory::systemProxyForQuery ( par1 );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QNETWORKPROXY" );
  #else
  pDynSym = hb_dynsymFindName( "QNETWORKPROXY" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
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

$extraMethods

#pragma ENDDUMP

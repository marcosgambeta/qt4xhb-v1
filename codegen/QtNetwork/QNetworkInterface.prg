$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QNETWORKADDRESSENTRY
REQUEST QHOSTADDRESS
REQUEST QNETWORKINTERFACE
#endif

CLASS QNetworkInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addressEntries
   METHOD flags
   METHOD hardwareAddress
   METHOD humanReadableName
   METHOD index
   METHOD isValid
   METHOD name
   METHOD allAddresses
   METHOD allInterfaces
   METHOD interfaceFromIndex
   METHOD interfaceFromName

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QNetworkInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QNetworkInterface ()
$internalConstructor=|new1|

$prototype=QNetworkInterface ( const QNetworkInterface & other )
$internalConstructor=|new2|const QNetworkInterface &

//[1]QNetworkInterface ()
//[2]QNetworkInterface ( const QNetworkInterface & other )

HB_FUNC_STATIC( QNETWORKINTERFACE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkInterface_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKINTERFACE(1) )
  {
    QNetworkInterface_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QList<QNetworkAddressEntry> addressEntries () const
HB_FUNC_STATIC( QNETWORKINTERFACE_ADDRESSENTRIES )
{
  QNetworkInterface * obj = (QNetworkInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QNetworkAddressEntry> list = obj->addressEntries ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QNETWORKADDRESSENTRY" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
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
        hb_itemPutPtr( pItem, (QNetworkAddressEntry *) new QNetworkAddressEntry ( list[i] ) );
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

$prototype=InterfaceFlags flags () const
$method=|QNetworkInterface::InterfaceFlags|flags|

$prototype=QString hardwareAddress () const
$method=|QString|hardwareAddress|

$prototype=QString humanReadableName () const
$method=|QString|humanReadableName|

$prototype=int index () const
$method=|int|index|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=QString name () const
$method=|QString|name|

$prototype=QList<QHostAddress> allAddresses ()
HB_FUNC_STATIC( QNETWORKINTERFACE_ALLADDRESSES )
{
  QList<QHostAddress> list = QNetworkInterface::allAddresses ();
  PHB_DYNS pDynSym = hb_dynsymFindName( "QHOSTADDRESS" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
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
      hb_itemPutPtr( pItem, (QHostAddress *) new QHostAddress ( list[i] ) );
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

$prototype=QList<QNetworkInterface> allInterfaces ()
HB_FUNC_STATIC( QNETWORKINTERFACE_ALLINTERFACES )
{
  QList<QNetworkInterface> list = QNetworkInterface::allInterfaces ();
  PHB_DYNS pDynSym = hb_dynsymFindName( "QNETWORKINTERFACE" );
  PHB_ITEM pArray = hb_itemArrayNew(0);
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
      hb_itemPutPtr( pItem, (QNetworkInterface *) new QNetworkInterface ( list[i] ) );
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

$prototype=static QNetworkInterface interfaceFromIndex ( int index )
$staticMethod=|QNetworkInterface|interfaceFromIndex|int

$prototype=static QNetworkInterface interfaceFromName ( const QString & name )
$staticMethod=|QNetworkInterface|interfaceFromName|const QString &

$extraMethods

#pragma ENDDUMP

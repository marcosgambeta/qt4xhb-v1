%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWEBHISTORYITEM
#endif

CLASS QWebHistory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD back
   METHOD backItem
   METHOD backItems
   METHOD canGoBack
   METHOD canGoForward
   METHOD clear
   METHOD count
   METHOD currentItem
   METHOD currentItemIndex
   METHOD forward
   METHOD forwardItem
   METHOD forwardItems
   METHOD goToItem
   METHOD itemAt
   METHOD items
   METHOD maximumItemCount
   METHOD setMaximumItemCount

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWebHistory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=void back ()
$method=|void|back|

$prototype=QWebHistoryItem backItem () const
$method=|QWebHistoryItem|backItem|

$prototype=QList<QWebHistoryItem> backItems ( int maxItems ) const
HB_FUNC_STATIC( QWEBHISTORY_BACKITEMS )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QWebHistoryItem> list = obj->backItems ( PINT(1) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QWEBHISTORYITEM" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
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
        hb_itemPutPtr( pItem, (QWebHistoryItem *) new QWebHistoryItem ( list[i] ) );
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

$prototype=bool canGoBack () const
$method=|bool|canGoBack|

$prototype=bool canGoForward () const
$method=|bool|canGoForward|

$prototype=void clear ()
$method=|void|clear|

$prototype=int count () const
$method=|int|count|

$prototype=QWebHistoryItem currentItem () const
$method=|QWebHistoryItem|currentItem|

$prototype=int currentItemIndex () const
$method=|int|currentItemIndex|

$prototype=void forward ()
$method=|void|forward|

$prototype=QWebHistoryItem forwardItem () const
$method=|QWebHistoryItem|forwardItem|

$prototype=QList<QWebHistoryItem> forwardItems ( int maxItems ) const
HB_FUNC_STATIC( QWEBHISTORY_FORWARDITEMS )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QWebHistoryItem> list = obj->forwardItems ( PINT(1) );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QWEBHISTORYITEM" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
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
        hb_itemPutPtr( pItem, (QWebHistoryItem *) new QWebHistoryItem ( list[i] ) );
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

$prototype=void goToItem ( const QWebHistoryItem & item )
$method=|void|goToItem|const QWebHistoryItem &

$prototype=QWebHistoryItem itemAt ( int i ) const
$method=|QWebHistoryItem|itemAt|int

$prototype=QList<QWebHistoryItem> items () const
HB_FUNC_STATIC( QWEBHISTORY_ITEMS )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QWebHistoryItem> list = obj->items ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QWEBHISTORYITEM" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
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
        hb_itemPutPtr( pItem, (QWebHistoryItem *) new QWebHistoryItem ( list[i] ) );
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

$prototype=int maximumItemCount () const
$method=|int|maximumItemCount|

$prototype=void setMaximumItemCount ( int count )
$method=|void|setMaximumItemCount|int

$extraMethods

#pragma ENDDUMP

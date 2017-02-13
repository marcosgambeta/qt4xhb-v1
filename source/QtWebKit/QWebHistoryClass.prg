/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QWEBHISTORYITEM

CLASS QWebHistory

   DATA pointer
   DATA class_id INIT Class_Id_QWebHistory
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QWebHistory
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QWebHistory
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QWebHistory
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QWebHistory
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QWebHistory
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QWebHistory
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QWebHistory>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"



/*
void back ()
*/
HB_FUNC_STATIC( QWEBHISTORY_BACK )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->back (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWebHistoryItem backItem () const
*/
HB_FUNC_STATIC( QWEBHISTORY_BACKITEM )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebHistoryItem * ptr = new QWebHistoryItem( obj->backItem (  ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBHISTORYITEM", true );  }
}


/*
QList<QWebHistoryItem> backItems ( int maxItems ) const
*/
HB_FUNC_STATIC( QWEBHISTORY_BACKITEMS )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QList<QWebHistoryItem> list = obj->backItems ( par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWEBHISTORYITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QWEBHISTORYITEM" );
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


/*
bool canGoBack () const
*/
HB_FUNC_STATIC( QWEBHISTORY_CANGOBACK )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->canGoBack (  );
    hb_retl( b );
  }
}


/*
bool canGoForward () const
*/
HB_FUNC_STATIC( QWEBHISTORY_CANGOFORWARD )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->canGoForward (  );
    hb_retl( b );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QWEBHISTORY_CLEAR )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int count () const
*/
HB_FUNC_STATIC( QWEBHISTORY_COUNT )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->count (  );
    hb_retni( i );
  }
}


/*
QWebHistoryItem currentItem () const
*/
HB_FUNC_STATIC( QWEBHISTORY_CURRENTITEM )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebHistoryItem * ptr = new QWebHistoryItem( obj->currentItem (  ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBHISTORYITEM", true );  }
}


/*
int currentItemIndex () const
*/
HB_FUNC_STATIC( QWEBHISTORY_CURRENTITEMINDEX )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->currentItemIndex (  );
    hb_retni( i );
  }
}


/*
void forward ()
*/
HB_FUNC_STATIC( QWEBHISTORY_FORWARD )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->forward (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWebHistoryItem forwardItem () const
*/
HB_FUNC_STATIC( QWEBHISTORY_FORWARDITEM )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebHistoryItem * ptr = new QWebHistoryItem( obj->forwardItem (  ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBHISTORYITEM", true );  }
}


/*
QList<QWebHistoryItem> forwardItems ( int maxItems ) const
*/
HB_FUNC_STATIC( QWEBHISTORY_FORWARDITEMS )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QList<QWebHistoryItem> list = obj->forwardItems ( par1 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWEBHISTORYITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QWEBHISTORYITEM" );
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


/*
void goToItem ( const QWebHistoryItem & item )
*/
HB_FUNC_STATIC( QWEBHISTORY_GOTOITEM )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWebHistoryItem * par1 = (QWebHistoryItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->goToItem ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWebHistoryItem itemAt ( int i ) const
*/
HB_FUNC_STATIC( QWEBHISTORY_ITEMAT )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QWebHistoryItem * ptr = new QWebHistoryItem( obj->itemAt ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QWEBHISTORYITEM", true );  }
}


/*
QList<QWebHistoryItem> items () const
*/
HB_FUNC_STATIC( QWEBHISTORY_ITEMS )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QWebHistoryItem> list = obj->items (  );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QWEBHISTORYITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QWEBHISTORYITEM" );
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


/*
int maximumItemCount () const
*/
HB_FUNC_STATIC( QWEBHISTORY_MAXIMUMITEMCOUNT )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->maximumItemCount (  );
    hb_retni( i );
  }
}


/*
void setMaximumItemCount ( int count )
*/
HB_FUNC_STATIC( QWEBHISTORY_SETMAXIMUMITEMCOUNT )
{
  QWebHistory * obj = (QWebHistory *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMaximumItemCount ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

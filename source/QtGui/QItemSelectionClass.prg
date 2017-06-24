/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS QItemSelection

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD contains
   METHOD indexes
   METHOD merge
   METHOD select
   METHOD split
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QItemSelection
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QItemSelection>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QItemSelection ()
*/
HB_FUNC_STATIC( QITEMSELECTION_NEW1 )
{
  QItemSelection * o = new QItemSelection ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QItemSelection ( const QModelIndex & topLeft, const QModelIndex & bottomRight )
*/
HB_FUNC_STATIC( QITEMSELECTION_NEW2 )
{
  QItemSelection * o = new QItemSelection ( *PQMODELINDEX(1), *PQMODELINDEX(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QItemSelection ()
//[2]QItemSelection ( const QModelIndex & topLeft, const QModelIndex & bottomRight )

HB_FUNC_STATIC( QITEMSELECTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QITEMSELECTION_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISQMODELINDEX(2) )
  {
    HB_FUNC_EXEC( QITEMSELECTION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QITEMSELECTION_DELETE )
{
  QItemSelection * obj = (QItemSelection *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool contains ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QITEMSELECTION_CONTAINS )
{
  QItemSelection * obj = (QItemSelection *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->contains ( *PQMODELINDEX(1) ) );
  }
}


/*
QModelIndexList indexes () const
*/
HB_FUNC_STATIC( QITEMSELECTION_INDEXES )
{
  QItemSelection * obj = (QItemSelection *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndexList list = obj->indexes ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QMODELINDEX" );
    #else
    pDynSym = hb_dynsymFindName( "QMODELINDEX" );
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
        hb_itemPutPtr( pItem, (QModelIndex *) new QModelIndex( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
void merge ( const QItemSelection & other, QItemSelectionModel::SelectionFlags command )
*/
HB_FUNC_STATIC( QITEMSELECTION_MERGE )
{
  QItemSelection * obj = (QItemSelection *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    obj->merge ( *PQITEMSELECTION(1), (QItemSelectionModel::SelectionFlags) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void select ( const QModelIndex & topLeft, const QModelIndex & bottomRight )
*/
HB_FUNC_STATIC( QITEMSELECTION_SELECT )
{
  QItemSelection * obj = (QItemSelection *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->select ( *PQMODELINDEX(1), *PQMODELINDEX(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void split ( const QItemSelectionRange & range, const QItemSelectionRange & other, QItemSelection * result )
*/
HB_FUNC_STATIC( QITEMSELECTION_SPLIT )
{
  QItemSelection * par3 = (QItemSelection *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QItemSelection::split ( *PQITEMSELECTIONRANGE(1), *PQITEMSELECTIONRANGE(2), par3 );
  hb_itemReturn( hb_stackSelfItem() );
}


HB_FUNC_STATIC( QITEMSELECTION_NEWFROM )
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

HB_FUNC_STATIC( QITEMSELECTION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QITEMSELECTION_NEWFROM );
}

HB_FUNC_STATIC( QITEMSELECTION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QITEMSELECTION_NEWFROM );
}

HB_FUNC_STATIC( QITEMSELECTION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QITEMSELECTION_SETSELFDESTRUCTION )
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

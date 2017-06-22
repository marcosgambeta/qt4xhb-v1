/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QITEMSELECTIONRANGE
REQUEST QABSTRACTITEMMODEL
#endif

CLASS QItemSelectionRange

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD bottom
   METHOD bottomRight
   METHOD contains1
   METHOD contains2
   METHOD contains
   METHOD height
   METHOD indexes
   METHOD intersected
   METHOD intersects
   METHOD isEmpty
   METHOD isValid
   METHOD left
   METHOD model
   METHOD parent
   METHOD right
   METHOD top
   METHOD topLeft
   METHOD width
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QItemSelectionRange
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QItemSelectionRange>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QItemSelectionRange ()
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_NEW1 )
{
  QItemSelectionRange * o = new QItemSelectionRange ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QItemSelectionRange ( const QItemSelectionRange & other )
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_NEW2 )
{
  QItemSelectionRange * o = new QItemSelectionRange ( *PQITEMSELECTIONRANGE(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QItemSelectionRange ( const QModelIndex & topLeft, const QModelIndex & bottomRight )
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_NEW3 )
{
  QItemSelectionRange * o = new QItemSelectionRange ( *PQMODELINDEX(1), *PQMODELINDEX(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QItemSelectionRange ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_NEW4 )
{
  QItemSelectionRange * o = new QItemSelectionRange ( *PQMODELINDEX(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QItemSelectionRange ()
//[2]QItemSelectionRange ( const QItemSelectionRange & other )
//[3]QItemSelectionRange ( const QModelIndex & topLeft, const QModelIndex & bottomRight )
//[4]QItemSelectionRange ( const QModelIndex & index )

HB_FUNC_STATIC( QITEMSELECTIONRANGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QITEMSELECTIONRANGE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQITEMSELECTIONRANGE(1) )
  {
    HB_FUNC_EXEC( QITEMSELECTIONRANGE_NEW2 );
  }
  else if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISQMODELINDEX(2) )
  {
    HB_FUNC_EXEC( QITEMSELECTIONRANGE_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    HB_FUNC_EXEC( QITEMSELECTIONRANGE_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QITEMSELECTIONRANGE_DELETE )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int bottom () const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_BOTTOM )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->bottom () );
  }
}


/*
QModelIndex bottomRight () const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_BOTTOMRIGHT )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->bottomRight () );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
bool contains ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_CONTAINS1 )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->contains ( *PQMODELINDEX(1) ) );
  }
}


/*
bool contains ( int row, int column, const QModelIndex & parentIndex ) const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_CONTAINS2 )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->contains ( PINT(1), PINT(2), *PQMODELINDEX(3) ) );
  }
}


//[1]bool contains ( const QModelIndex & index ) const
//[2]bool contains ( int row, int column, const QModelIndex & parentIndex ) const

HB_FUNC_STATIC( QITEMSELECTIONRANGE_CONTAINS )
{
  if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    HB_FUNC_EXEC( QITEMSELECTIONRANGE_CONTAINS1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQMODELINDEX(3) )
  {
    HB_FUNC_EXEC( QITEMSELECTIONRANGE_CONTAINS2 );
  }
}

/*
int height () const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_HEIGHT )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->height () );
  }
}


/*
QModelIndexList indexes () const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_INDEXES )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QItemSelectionRange intersected ( const QItemSelectionRange & other ) const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_INTERSECTED )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QItemSelectionRange * par1 = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QItemSelectionRange * ptr = new QItemSelectionRange( obj->intersected ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QITEMSELECTIONRANGE" );
  }
}


/*
bool intersects ( const QItemSelectionRange & other ) const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_INTERSECTS )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QItemSelectionRange * par1 = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->intersects ( *par1 ) );
  }
}


/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_ISEMPTY )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_ISVALID )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
int left () const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_LEFT )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->left () );
  }
}


/*
const QAbstractItemModel * model () const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_MODEL )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QAbstractItemModel * ptr = obj->model ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTITEMMODEL" );
  }
}


/*
QModelIndex parent () const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_PARENT )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->parent () );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
int right () const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_RIGHT )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->right () );
  }
}


/*
int top () const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_TOP )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->top () );
  }
}


/*
QModelIndex topLeft () const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_TOPLEFT )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->topLeft () );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
int width () const
*/
HB_FUNC_STATIC( QITEMSELECTIONRANGE_WIDTH )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->width () );
  }
}


HB_FUNC_STATIC( QITEMSELECTIONRANGE_NEWFROM )
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

HB_FUNC_STATIC( QITEMSELECTIONRANGE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QITEMSELECTIONRANGE_NEWFROM );
}

HB_FUNC_STATIC( QITEMSELECTIONRANGE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QITEMSELECTIONRANGE_NEWFROM );
}

HB_FUNC_STATIC( QITEMSELECTIONRANGE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QITEMSELECTIONRANGE_SETSELFDESTRUCTION )
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

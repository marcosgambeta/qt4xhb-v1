$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS QItemSelection

   DATA pointer
   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

#include <QItemSelection>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QItemSelection ()
$internalConstructor=|new1|

$prototype=QItemSelection ( const QModelIndex & topLeft, const QModelIndex & bottomRight )
$internalConstructor=|new2|const QModelIndex &,const QModelIndex &

//[1]QItemSelection ()
//[2]QItemSelection ( const QModelIndex & topLeft, const QModelIndex & bottomRight )

HB_FUNC_STATIC( QITEMSELECTION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QItemSelection_new1();
  }
  else if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISQMODELINDEX(2) )
  {
    QItemSelection_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool contains ( const QModelIndex & index ) const
$method=|bool|contains|const QModelIndex &

$prototype=QModelIndexList indexes () const
HB_FUNC_STATIC( QITEMSELECTION_INDEXES )
{
  QItemSelection * obj = (QItemSelection *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QModelIndexList list = obj->indexes ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QMODELINDEX" );
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

$prototype=void merge ( const QItemSelection & other, QItemSelectionModel::SelectionFlags command )
$method=|void|merge|const QItemSelection &,QItemSelectionModel::SelectionFlags

$prototype=void select ( const QModelIndex & topLeft, const QModelIndex & bottomRight )
$method=|void|select|const QModelIndex &,const QModelIndex &

$prototype=static void split ( const QItemSelectionRange & range, const QItemSelectionRange & other, QItemSelection * result )
$staticMethod=|void|split|const QItemSelectionRange &,const QItemSelectionRange &,QItemSelection *

$extraMethods

#pragma ENDDUMP

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QITEMSELECTIONRANGE
REQUEST QABSTRACTITEMMODEL
#endif

CLASS QItemSelectionRange

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD bottom
   METHOD bottomRight
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

$destructor

#pragma BEGINDUMP

#include <QItemSelectionRange>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QItemSelectionRange ()
$internalConstructor=|new1|

$prototype=QItemSelectionRange ( const QItemSelectionRange & other )
$internalConstructor=|new2|const QItemSelectionRange &

$prototype=QItemSelectionRange ( const QModelIndex & topLeft, const QModelIndex & bottomRight )
$internalConstructor=|new3|const QModelIndex &,const QModelIndex &

$prototype=QItemSelectionRange ( const QModelIndex & index )
$internalConstructor=|new4|const QModelIndex &

//[1]QItemSelectionRange ()
//[2]QItemSelectionRange ( const QItemSelectionRange & other )
//[3]QItemSelectionRange ( const QModelIndex & topLeft, const QModelIndex & bottomRight )
//[4]QItemSelectionRange ( const QModelIndex & index )

HB_FUNC_STATIC( QITEMSELECTIONRANGE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QItemSelectionRange_new1();
  }
  else if( ISNUMPAR(1) && ISQITEMSELECTIONRANGE(1) )
  {
    QItemSelectionRange_new2();
  }
  else if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISQMODELINDEX(2) )
  {
    QItemSelectionRange_new3();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QItemSelectionRange_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=int bottom () const
$method=|int|bottom|

$prototype=QModelIndex bottomRight () const
$method=|QModelIndex|bottomRight|

$prototype=bool contains ( const QModelIndex & index ) const
$internalMethod=|bool|contains,contains1|const QModelIndex &

$prototype=bool contains ( int row, int column, const QModelIndex & parentIndex ) const
$internalMethod=|bool|contains,contains2|int,int,const QModelIndex &

//[1]bool contains ( const QModelIndex & index ) const
//[2]bool contains ( int row, int column, const QModelIndex & parentIndex ) const

HB_FUNC_STATIC( QITEMSELECTIONRANGE_CONTAINS )
{
  if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QItemSelectionRange_contains1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQMODELINDEX(3) )
  {
    QItemSelectionRange_contains2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=int height () const
$method=|int|height|

$prototype=QModelIndexList indexes () const
HB_FUNC_STATIC( QITEMSELECTIONRANGE_INDEXES )
{
  QItemSelectionRange * obj = (QItemSelectionRange *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
        hb_vmPushDynSym( pDynSym );
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

$prototype=QItemSelectionRange intersected ( const QItemSelectionRange & other ) const
$method=|QItemSelectionRange|intersected|const QItemSelectionRange &

$prototype=bool intersects ( const QItemSelectionRange & other ) const
$method=|bool|intersects|const QItemSelectionRange &

$prototype=bool isEmpty () const
$method=|bool|isEmpty|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=int left () const
$method=|int|left|

$prototype=const QAbstractItemModel * model () const
$method=|const QAbstractItemModel *|model|

$prototype=QModelIndex parent () const
$method=|QModelIndex|parent|

$prototype=int right () const
$method=|int|right|

$prototype=int top () const
$method=|int|top|

$prototype=QModelIndex topLeft () const
$method=|QModelIndex|topLeft|

$prototype=int width () const
$method=|int|width|

$extraMethods

#pragma ENDDUMP

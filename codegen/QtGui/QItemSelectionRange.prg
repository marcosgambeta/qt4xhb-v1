%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QItemSelectionRange ()
$internalConstructor=|new1|

$prototype=QItemSelectionRange ( const QItemSelectionRange & other )
$internalConstructor=|new2|const QItemSelectionRange &

$prototype=QItemSelectionRange ( const QModelIndex & topLeft, const QModelIndex & bottomRight )
$internalConstructor=|new3|const QModelIndex &,const QModelIndex &

$prototype=QItemSelectionRange ( const QModelIndex & index )
$internalConstructor=|new4|const QModelIndex &

/*
[1]QItemSelectionRange ()
[2]QItemSelectionRange ( const QItemSelectionRange & other )
[3]QItemSelectionRange ( const QModelIndex & topLeft, const QModelIndex & bottomRight )
[4]QItemSelectionRange ( const QModelIndex & index )
*/

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
$addMethod=new

$deleteMethod

$prototypeV2=int bottom() const

$prototypeV2=QModelIndex bottomRight() const

$prototype=bool contains ( const QModelIndex & index ) const
$internalMethod=|bool|contains,contains1|const QModelIndex &

$prototype=bool contains ( int row, int column, const QModelIndex & parentIndex ) const
$internalMethod=|bool|contains,contains2|int,int,const QModelIndex &

/*
[1]bool contains ( const QModelIndex & index ) const
[2]bool contains ( int row, int column, const QModelIndex & parentIndex ) const
*/

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
$addMethod=contains

$prototypeV2=int height() const

$prototypeV2=QModelIndexList indexes() const

$prototype=QItemSelectionRange intersected ( const QItemSelectionRange & other ) const
$method=|QItemSelectionRange|intersected|const QItemSelectionRange &

$prototype=bool intersects ( const QItemSelectionRange & other ) const
$method=|bool|intersects|const QItemSelectionRange &

$prototypeV2=bool isEmpty() const

$prototypeV2=bool isValid() const

$prototypeV2=int left() const

$prototype=const QAbstractItemModel * model () const
$method=|const QAbstractItemModel *|model|

$prototypeV2=QModelIndex parent() const

$prototypeV2=int right() const

$prototypeV2=int top() const

$prototypeV2=QModelIndex topLeft() const

$prototypeV2=int width() const

$extraMethods

#pragma ENDDUMP

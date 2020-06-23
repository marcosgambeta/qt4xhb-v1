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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QItemSelectionModel ( QAbstractItemModel * model )
$internalConstructor=|new1|QAbstractItemModel *

$prototype=QItemSelectionModel ( QAbstractItemModel * model, QObject * parent )
$internalConstructor=|new2|QAbstractItemModel *,QObject *

/*
[1]QItemSelectionModel ( QAbstractItemModel * model )
[2]QItemSelectionModel ( QAbstractItemModel * model, QObject * parent )
*/

HB_FUNC_STATIC( QITEMSELECTIONMODEL_NEW )
{
  if( ISNUMPAR(1) && ISQABSTRACTITEMMODEL(1) )
  {
    QItemSelectionModel_new1();
  }
  else if( ISNUMPAR(2) && ISQABSTRACTITEMMODEL(1) && ISQOBJECT(2) )
  {
    QItemSelectionModel_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=bool columnIntersectsSelection( int column, const QModelIndex & parent ) const

$prototypeV2=QModelIndex currentIndex() const

$prototypeV2=bool hasSelection() const

$prototypeV2=bool isColumnSelected( int column, const QModelIndex & parent ) const

$prototypeV2=bool isRowSelected( int row, const QModelIndex & parent ) const

$prototypeV2=bool isSelected( const QModelIndex & index ) const

$prototypeV2=const QAbstractItemModel * model() const

$prototypeV2=bool rowIntersectsSelection( int row, const QModelIndex & parent ) const

$prototype=QModelIndexList selectedColumns ( int row = 0 ) const
$method=|QModelIndexList|selectedColumns|int=0

$prototypeV2=QModelIndexList selectedIndexes() const

$prototype=QModelIndexList selectedRows ( int column = 0 ) const
$method=|QModelIndexList|selectedRows|int=0

$prototypeV2=const QItemSelection selection() const

$prototypeV2=virtual void clear()

$prototypeV2=void clearSelection()

$prototypeV2=virtual void reset()

$prototype=virtual void select ( const QModelIndex & index, QItemSelectionModel::SelectionFlags command )
$internalVirtualMethod=|void|select,select1|const QModelIndex &,QItemSelectionModel::SelectionFlags

$prototype=virtual void select ( const QItemSelection & selection, QItemSelectionModel::SelectionFlags command )
$internalVirtualMethod=|void|select,select2|const QItemSelection &,QItemSelectionModel::SelectionFlags

/*
[1]virtual void select ( const QModelIndex & index, QItemSelectionModel::SelectionFlags command )
[2]virtual void select ( const QItemSelection & selection, QItemSelectionModel::SelectionFlags command )
*/

HB_FUNC_STATIC( QITEMSELECTIONMODEL_SELECT )
{
  if( ISNUMPAR(2) && ISQMODELINDEX(1) && ISNUM(2) )
  {
    QItemSelectionModel_select1();
  }
  else if( ISNUMPAR(2) && ISQITEMSELECTION(1) && ISNUM(2) )
  {
    QItemSelectionModel_select2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=select

$prototypeV2=void setCurrentIndex( const QModelIndex & index, QItemSelectionModel::SelectionFlags command )

$beginSignals
$signal=|currentChanged(QModelIndex,QModelIndex)
$signal=|currentColumnChanged(QModelIndex,QModelIndex)
$signal=|currentRowChanged(QModelIndex,QModelIndex)
$signal=|selectionChanged(QItemSelection,QItemSelection)
$endSignals

#pragma ENDDUMP

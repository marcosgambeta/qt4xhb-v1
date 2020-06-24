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

$beginClassFrom=QTableView

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTableWidget ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QTableWidget ( int rows, int columns, QWidget * parent = 0 )
$internalConstructor=|new2|int,int,QWidget *=0

/*
[1]QTableWidget ( QWidget * parent = 0 )
[2]QTableWidget ( int rows, int columns, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QTABLEWIDGET_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QTableWidget_new1();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQWIDGET(3)||ISNIL(3)) )
  {
    QTableWidget_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QWidget * cellWidget( int row, int column ) const

$prototypeV2=void closePersistentEditor( QTableWidgetItem * item )

$prototypeV2=int column( const QTableWidgetItem * item ) const

$prototypeV2=int columnCount() const

$prototypeV2=int currentColumn() const

$prototypeV2=QTableWidgetItem * currentItem() const

$prototypeV2=int currentRow() const

$prototypeV2=void editItem( QTableWidgetItem * item )

$prototypeV2=QList<QTableWidgetItem *> findItems( const QString & text, Qt::MatchFlags flags ) const

$prototypeV2=QTableWidgetItem * horizontalHeaderItem( int column ) const

$prototypeV2=QTableWidgetItem * item( int row, int column ) const

$prototype=QTableWidgetItem * itemAt ( const QPoint & point ) const
$internalMethod=|QTableWidgetItem *|itemAt,itemAt1|const QPoint &

$prototype=QTableWidgetItem * itemAt ( int ax, int ay ) const
$internalMethod=|QTableWidgetItem *|itemAt,itemAt2|int,int

/*
[1]QTableWidgetItem * itemAt ( const QPoint & point ) const
[2]QTableWidgetItem * itemAt ( int ax, int ay ) const
*/

HB_FUNC_STATIC( QTABLEWIDGET_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QTableWidget_itemAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTableWidget_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=itemAt

$prototypeV2=void openPersistentEditor( QTableWidgetItem * item )

$prototypeV2=void removeCellWidget( int row, int column )

$prototypeV2=int row( const QTableWidgetItem * item ) const

$prototypeV2=int rowCount() const

$prototypeV2=QList<QTableWidgetItem *> selectedItems()

$prototypeV2=QList<QTableWidgetSelectionRange> selectedRanges() const

$prototypeV2=void setCellWidget( int row, int column, QWidget * widget )

$prototypeV2=void setColumnCount( int columns )

$prototype=void setCurrentCell ( int row, int column )
$internalMethod=|void|setCurrentCell,setCurrentCell1|int,int

$prototype=void setCurrentCell ( int row, int column, QItemSelectionModel::SelectionFlags command )
$internalMethod=|void|setCurrentCell,setCurrentCell2|int,int,QItemSelectionModel::SelectionFlags

/*
[1]void setCurrentCell ( int row, int column )
[2]void setCurrentCell ( int row, int column, QItemSelectionModel::SelectionFlags command )
*/

HB_FUNC_STATIC( QTABLEWIDGET_SETCURRENTCELL )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTableWidget_setCurrentCell1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QTableWidget_setCurrentCell2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setCurrentCell

$prototype=void setCurrentItem ( QTableWidgetItem * item )
$internalMethod=|void|setCurrentItem,setCurrentItem1|QTableWidgetItem *

$prototype=void setCurrentItem ( QTableWidgetItem * item, QItemSelectionModel::SelectionFlags command )
$internalMethod=|void|setCurrentItem,setCurrentItem2|QTableWidgetItem *,QItemSelectionModel::SelectionFlags

/*
[1]void setCurrentItem ( QTableWidgetItem * item )
[2]void setCurrentItem ( QTableWidgetItem * item, QItemSelectionModel::SelectionFlags command )
*/

HB_FUNC_STATIC( QTABLEWIDGET_SETCURRENTITEM )
{
  if( ISNUMPAR(1) && ISQTABLEWIDGETITEM(1) )
  {
    QTableWidget_setCurrentItem1();
  }
  else if( ISNUMPAR(2) && ISQTABLEWIDGETITEM(1) && ISNUM(2) )
  {
    QTableWidget_setCurrentItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setCurrentItem

$prototypeV2=void setHorizontalHeaderItem( int column, QTableWidgetItem * item )

$prototypeV2=void setHorizontalHeaderLabels( const QStringList & labels )

$prototypeV2=void setItem( int row, int column, QTableWidgetItem * item )

$prototypeV2=void setItemPrototype( const QTableWidgetItem * item )

$prototypeV2=void setRangeSelected( const QTableWidgetSelectionRange & range, bool select )

$prototypeV2=void setRowCount( int rows )

$prototypeV2=void setVerticalHeaderItem( int row, QTableWidgetItem * item )

$prototypeV2=void setVerticalHeaderLabels( const QStringList & labels )

$prototypeV2=void sortItems( int column, Qt::SortOrder order = Qt::AscendingOrder )

$prototypeV2=QTableWidgetItem * takeHorizontalHeaderItem( int column )

$prototypeV2=QTableWidgetItem * takeItem( int row, int column )

$prototypeV2=QTableWidgetItem * takeVerticalHeaderItem( int row )

$prototypeV2=QTableWidgetItem * verticalHeaderItem( int row ) const

$prototypeV2=int visualColumn( int logicalColumn ) const

$prototypeV2=QRect visualItemRect( const QTableWidgetItem * item ) const

$prototypeV2=int visualRow( int logicalRow ) const

$prototypeV2=void clear()

$prototypeV2=void clearContents()

$prototypeV2=void insertColumn( int column )

$prototypeV2=void insertRow( int row )

$prototypeV2=void removeColumn( int column )

$prototypeV2=void removeRow( int row )

$prototypeV2=void scrollToItem( const QTableWidgetItem * item, QAbstractItemView::ScrollHint hint = QAbstractItemView::EnsureVisible )

$beginSignals
$signal=|cellActivated(int,int)
$signal=|cellChanged(int,int)
$signal=|cellClicked(int,int)
$signal=|cellDoubleClicked(int,int)
$signal=|cellEntered(int,int)
$signal=|cellPressed(int,int)
$signal=|currentCellChanged(int,int,int,int)
$signal=|currentItemChanged(QTableWidgetItem*,QTableWidgetItem*)
$signal=|itemActivated(QTableWidgetItem*)
$signal=|itemChanged(QTableWidgetItem*)
$signal=|itemClicked(QTableWidgetItem*)
$signal=|itemDoubleClicked(QTableWidgetItem*)
$signal=|itemEntered(QTableWidgetItem*)
$signal=|itemPressed(QTableWidgetItem*)
$signal=|itemSelectionChanged()
$endSignals

#pragma ENDDUMP

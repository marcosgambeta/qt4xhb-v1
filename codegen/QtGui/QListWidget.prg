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

$beginClassFrom=QListView

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QListWidget ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=void addItem ( const QString & label )
$internalMethod=|void|addItem,addItem1|const QString &

$prototype=void addItem ( QListWidgetItem * item )
$internalMethod=|void|addItem,addItem2|QListWidgetItem *

/*
[1]void addItem ( const QString & label )
[2]void addItem ( QListWidgetItem * item )
*/

HB_FUNC_STATIC( QLISTWIDGET_ADDITEM )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QListWidget_addItem1();
  }
  else if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
  {
    QListWidget_addItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addItem

$prototypeV2=void addItems( const QStringList & labels )

$prototypeV2=void closePersistentEditor( QListWidgetItem * item )

$prototypeV2=int count() const

$prototypeV2=QListWidgetItem * currentItem() const

$prototypeV2=int currentRow() const

$prototypeV2=void editItem( QListWidgetItem * item )

$prototypeV2=QList<QListWidgetItem *> findItems( const QString & text, Qt::MatchFlags flags ) const

$prototype=void insertItem ( int row, QListWidgetItem * item )
$internalMethod=|void|insertItem,insertItem1|int,QListWidgetItem *

$prototype=void insertItem ( int row, const QString & label )
$internalMethod=|void|insertItem,insertItem2|int,const QString &

/*
[1]void insertItem ( int row, QListWidgetItem * item )
[2]void insertItem ( int row, const QString & label )
*/

HB_FUNC_STATIC( QLISTWIDGET_INSERTITEM )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQLISTWIDGETITEM(2) )
  {
    QListWidget_insertItem1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    QListWidget_insertItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertItem

$prototypeV2=void insertItems( int row, const QStringList & labels )

$prototypeV2=bool isSortingEnabled() const

$prototypeV2=QListWidgetItem * item( int row ) const

$prototype=QListWidgetItem * itemAt ( const QPoint & p ) const
$internalMethod=|QListWidgetItem *|itemAt,itemAt1|const QPoint &

$prototype=QListWidgetItem * itemAt ( int x, int y ) const
$internalMethod=|QListWidgetItem *|itemAt,itemAt2|int,int

/*
[1]QListWidgetItem * itemAt ( const QPoint & p ) const
[2]QListWidgetItem * itemAt ( int x, int y ) const
*/

HB_FUNC_STATIC( QLISTWIDGET_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QListWidget_itemAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QListWidget_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=itemAt

$prototypeV2=QWidget * itemWidget( QListWidgetItem * item ) const

$prototypeV2=void openPersistentEditor( QListWidgetItem * item )

$prototypeV2=void removeItemWidget( QListWidgetItem * item )

$prototypeV2=int row( const QListWidgetItem * item ) const

$prototypeV2=QList<QListWidgetItem *> selectedItems() const

$prototype=void setCurrentItem ( QListWidgetItem * item )
$internalMethod=|void|setCurrentItem,setCurrentItem1|QListWidgetItem *

$prototype=void setCurrentItem ( QListWidgetItem * item, QItemSelectionModel::SelectionFlags command )
$internalMethod=|void|setCurrentItem,setCurrentItem2|QListWidgetItem *,QItemSelectionModel::SelectionFlags

/*
[1]void setCurrentItem ( QListWidgetItem * item )
[2]void setCurrentItem ( QListWidgetItem * item, QItemSelectionModel::SelectionFlags command )
*/

HB_FUNC_STATIC( QLISTWIDGET_SETCURRENTITEM )
{
  if( ISNUMPAR(1) && ISQLISTWIDGETITEM(1) )
  {
    QListWidget_setCurrentItem1();
  }
  else if( ISNUMPAR(2) && ISQLISTWIDGETITEM(1) && ISNUM(2) )
  {
    QListWidget_setCurrentItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setCurrentItem

$prototype=void setCurrentRow ( int row )
$internalMethod=|void|setCurrentRow,setCurrentRow1|int

$prototype=void setCurrentRow ( int row, QItemSelectionModel::SelectionFlags command )
$internalMethod=|void|setCurrentRow,setCurrentRow2|int,QItemSelectionModel::SelectionFlags

/*
[1]void setCurrentRow ( int row )
[2]void setCurrentRow ( int row, QItemSelectionModel::SelectionFlags command )
*/

HB_FUNC_STATIC( QLISTWIDGET_SETCURRENTROW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QListWidget_setCurrentRow1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QListWidget_setCurrentRow2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setCurrentRow

$prototypeV2=void setItemWidget( QListWidgetItem * item, QWidget * widget )

$prototypeV2=void setSortingEnabled( bool enable )

$prototypeV2=void sortItems( Qt::SortOrder order = Qt::AscendingOrder )

$prototypeV2=QListWidgetItem * takeItem( int row )

$prototypeV2=QRect visualItemRect( const QListWidgetItem * item ) const

$prototypeV2=virtual void dropEvent( QDropEvent * event )

$prototypeV2=void clear()

$prototypeV2=void scrollToItem( const QListWidgetItem * item, QAbstractItemView::ScrollHint hint = QAbstractItemView::EnsureVisible )

$beginSignals
$signal=|currentItemChanged(QListWidgetItem*,QListWidgetItem*)
$signal=|currentRowChanged(int)
$signal=|currentTextChanged(QString)
$signal=|itemActivated(QListWidgetItem*)
$signal=|itemChanged(QListWidgetItem*)
$signal=|itemClicked(QListWidgetItem*)
$signal=|itemDoubleClicked(QListWidgetItem*)
$signal=|itemEntered(QListWidgetItem*)
$signal=|itemPressed(QListWidgetItem*)
$signal=|itemSelectionChanged()
$endSignals

#pragma ENDDUMP

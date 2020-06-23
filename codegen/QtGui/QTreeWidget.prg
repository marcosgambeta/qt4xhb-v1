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

$beginClassFrom=QTreeView

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTreeWidget ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototypeV2=void addTopLevelItem( QTreeWidgetItem * item )

$prototypeV2=void addTopLevelItems( const QList<QTreeWidgetItem *> & items )

$prototype=void closePersistentEditor ( QTreeWidgetItem * item, int column = 0 )
$method=|void|closePersistentEditor|QTreeWidgetItem *,int=0

$prototypeV2=int columnCount() const

$prototypeV2=int currentColumn() const

$prototypeV2=QTreeWidgetItem * currentItem() const

$prototype=void editItem ( QTreeWidgetItem * item, int column = 0 )
$method=|void|editItem|QTreeWidgetItem *,int=0

$prototype=QList<QTreeWidgetItem *> findItems ( const QString & text, Qt::MatchFlags flags, int column = 0 ) const
$method=|QList<QTreeWidgetItem *>|findItems|const QString &,Qt::MatchFlags,int=0

$prototypeV2=QTreeWidgetItem * headerItem() const

$prototypeV2=int indexOfTopLevelItem( QTreeWidgetItem * item ) const

$prototypeV2=void insertTopLevelItem( int index, QTreeWidgetItem * item )

$prototypeV2=void insertTopLevelItems( int index, const QList<QTreeWidgetItem *> & items )

$prototypeV2=QTreeWidgetItem * invisibleRootItem() const

$prototypeV2=bool isFirstItemColumnSpanned( const QTreeWidgetItem * item ) const

$prototypeV2=QTreeWidgetItem * itemAbove( const QTreeWidgetItem * item ) const

$prototype=QTreeWidgetItem * itemAt ( const QPoint & p ) const
$internalMethod=|QTreeWidgetItem *|itemAt,itemAt1|const QPoint &

$prototype=QTreeWidgetItem * itemAt ( int x, int y ) const
$internalMethod=|QTreeWidgetItem *|itemAt,itemAt2|int,int

/*
[1]QTreeWidgetItem * itemAt ( const QPoint & p ) const
[2]QTreeWidgetItem * itemAt ( int x, int y ) const
*/

HB_FUNC_STATIC( QTREEWIDGET_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QTreeWidget_itemAt1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTreeWidget_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=itemAt

$prototypeV2=QTreeWidgetItem * itemBelow( const QTreeWidgetItem * item ) const

$prototypeV2=QWidget * itemWidget( QTreeWidgetItem * item, int column ) const

$prototype=void openPersistentEditor ( QTreeWidgetItem * item, int column = 0 )
$method=|void|openPersistentEditor|QTreeWidgetItem *,int=0

$prototypeV2=void removeItemWidget( QTreeWidgetItem * item, int column )

$prototypeV2=QList<QTreeWidgetItem *> selectedItems() const

$prototypeV2=void setColumnCount( int columns )

$prototype=void setCurrentItem ( QTreeWidgetItem * item )
$internalMethod=|void|setCurrentItem,setCurrentItem1|QTreeWidgetItem *

$prototype=void setCurrentItem ( QTreeWidgetItem * item, int column )
$internalMethod=|void|setCurrentItem,setCurrentItem2|QTreeWidgetItem *,int

$prototype=void setCurrentItem ( QTreeWidgetItem * item, int column, QItemSelectionModel::SelectionFlags command )
$internalMethod=|void|setCurrentItem,setCurrentItem3|QTreeWidgetItem *,int,QItemSelectionModel::SelectionFlags

/*
[1]void setCurrentItem ( QTreeWidgetItem * item )
[2]void setCurrentItem ( QTreeWidgetItem * item, int column )
[3]void setCurrentItem ( QTreeWidgetItem * item, int column, QItemSelectionModel::SelectionFlags command )
*/

HB_FUNC_STATIC( QTREEWIDGET_SETCURRENTITEM )
{
  if( ISNUMPAR(1) && ISQTREEWIDGETITEM(1) )
  {
    QTreeWidget_setCurrentItem1();
  }
  else if( ISNUMPAR(2) && ISQTREEWIDGETITEM(1) && ISNUM(2) )
  {
    QTreeWidget_setCurrentItem2();
  }
  else if( ISNUMPAR(3) && ISQTREEWIDGETITEM(1) && ISNUM(2) && ISNUM(3) )
  {
    QTreeWidget_setCurrentItem3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setCurrentItem

$prototypeV2=void setFirstItemColumnSpanned( const QTreeWidgetItem * item, bool span )

$prototypeV2=void setHeaderItem( QTreeWidgetItem * item )

$prototypeV2=void setHeaderLabel( const QString & label )

$prototypeV2=void setHeaderLabels( const QStringList & labels )

$prototypeV2=void setItemWidget( QTreeWidgetItem * item, int column, QWidget * widget )

$prototypeV2=int sortColumn() const

$prototypeV2=void sortItems( int column, Qt::SortOrder order )

$prototypeV2=QTreeWidgetItem * takeTopLevelItem( int index )

$prototypeV2=QTreeWidgetItem * topLevelItem( int index ) const

$prototypeV2=int topLevelItemCount() const

$prototypeV2=QRect visualItemRect( const QTreeWidgetItem * item ) const

$prototypeV2=virtual void setSelectionModel( QItemSelectionModel * selectionModel )

$prototypeV2=void clear()

$prototypeV2=void collapseItem( const QTreeWidgetItem * item )

$prototypeV2=void expandItem( const QTreeWidgetItem * item )

$prototype=void scrollToItem ( const QTreeWidgetItem * item, QAbstractItemView::ScrollHint hint = EnsureVisible )
$method=|void|scrollToItem|const QTreeWidgetItem *,QAbstractItemView::ScrollHint=QAbstractItemView::EnsureVisible

$beginSignals
$signal=|currentItemChanged(QTreeWidgetItem*,QTreeWidgetItem*)
$signal=|itemActivated(QTreeWidgetItem*,int)
$signal=|itemChanged(QTreeWidgetItem*,int)
$signal=|itemClicked(QTreeWidgetItem*,int)
$signal=|itemCollapsed(QTreeWidgetItem*)
$signal=|itemDoubleClicked(QTreeWidgetItem*,int)
$signal=|itemEntered(QTreeWidgetItem*,int)
$signal=|itemExpanded(QTreeWidgetItem*)
$signal=|itemPressed(QTreeWidgetItem*,int)
$signal=|itemSelectionChanged()
$endSignals

#pragma ENDDUMP

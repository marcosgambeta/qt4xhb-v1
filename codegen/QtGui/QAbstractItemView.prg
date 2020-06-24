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

$beginClassFrom=QAbstractScrollArea

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=bool alternatingRowColors() const

$prototypeV2=int autoScrollMargin() const

$prototypeV2=void closePersistentEditor( const QModelIndex & index )

$prototypeV2=QModelIndex currentIndex() const

$prototypeV2=Qt::DropAction defaultDropAction() const

$prototypeV2=QAbstractItemView::DragDropMode dragDropMode() const

$prototypeV2=bool dragDropOverwriteMode() const

$prototypeV2=bool dragEnabled() const

$prototypeV2=QAbstractItemView::EditTriggers editTriggers() const

$prototypeV2=bool hasAutoScroll() const

$prototypeV2=QAbstractItemView::ScrollMode horizontalScrollMode() const

$prototypeV2=QSize iconSize() const

$prototypeV2=virtual QModelIndex indexAt( const QPoint & point ) const = 0

$prototypeV2=QWidget * indexWidget( const QModelIndex & index ) const

$prototype=QAbstractItemDelegate * itemDelegate () const
$internalMethod=|QAbstractItemDelegate *|itemDelegate,itemDelegate1|

$prototype=QAbstractItemDelegate * itemDelegate ( const QModelIndex & index ) const
$internalMethod=|QAbstractItemDelegate *|itemDelegate,itemDelegate2|const QModelIndex &

/*
[1]QAbstractItemDelegate * itemDelegate () const
[2]QAbstractItemDelegate * itemDelegate ( const QModelIndex & index ) const
*/

HB_FUNC_STATIC( QABSTRACTITEMVIEW_ITEMDELEGATE )
{
  if( ISNUMPAR(0) )
  {
    QAbstractItemView_itemDelegate1();
  }
  else if( ISNUMPAR(1) && ISQMODELINDEX(1) )
  {
    QAbstractItemView_itemDelegate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=itemDelegate

$prototypeV2=QAbstractItemDelegate * itemDelegateForColumn( int column ) const

$prototypeV2=QAbstractItemDelegate * itemDelegateForRow( int row ) const

$prototypeV2=virtual void keyboardSearch( const QString & search )

$prototypeV2=QAbstractItemModel * model() const

$prototypeV2=void openPersistentEditor( const QModelIndex & index )

$prototypeV2=QModelIndex rootIndex() const

$prototypeV2=virtual void scrollTo( const QModelIndex & index, QAbstractItemView::ScrollHint hint = QAbstractItemView::EnsureVisible ) = 0

$prototypeV2=QAbstractItemView::SelectionBehavior selectionBehavior() const

$prototypeV2=QAbstractItemView::SelectionMode selectionMode() const

$prototypeV2=QItemSelectionModel * selectionModel() const

$prototypeV2=void setAlternatingRowColors( bool enable )

$prototypeV2=void setAutoScroll( bool enable )

$prototypeV2=void setAutoScrollMargin( int margin )

$prototypeV2=void setDefaultDropAction( Qt::DropAction dropAction )

$prototypeV2=void setDragDropMode( QAbstractItemView::DragDropMode behavior )

$prototypeV2=void setDragDropOverwriteMode( bool overwrite )

$prototypeV2=void setDragEnabled( bool enable )

$prototypeV2=void setDropIndicatorShown( bool enable )

$prototypeV2=void setEditTriggers( QAbstractItemView::EditTriggers triggers )

$prototypeV2=void setHorizontalScrollMode( QAbstractItemView::ScrollMode mode )

$prototypeV2=void setIconSize( const QSize & size )

$prototypeV2=void setIndexWidget( const QModelIndex & index, QWidget * widget )

$prototypeV2=void setItemDelegate( QAbstractItemDelegate * delegate )

$prototypeV2=void setItemDelegateForColumn( int column, QAbstractItemDelegate * delegate )

$prototypeV2=void setItemDelegateForRow( int row, QAbstractItemDelegate * delegate )

$prototypeV2=virtual void setModel( QAbstractItemModel * model )

$prototypeV2=void setSelectionBehavior( QAbstractItemView::SelectionBehavior behavior )

$prototypeV2=void setSelectionMode( QAbstractItemView::SelectionMode mode )

$prototypeV2=virtual void setSelectionModel( QItemSelectionModel * selectionModel )

$prototypeV2=void setTabKeyNavigation( bool enable )

$prototypeV2=void setTextElideMode( Qt::TextElideMode mode )

$prototypeV2=void setVerticalScrollMode( QAbstractItemView::ScrollMode mode )

$prototypeV2=bool showDropIndicator() const

$prototypeV2=virtual int sizeHintForColumn( int column ) const

$prototypeV2=QSize sizeHintForIndex( const QModelIndex & index ) const

$prototypeV2=virtual int sizeHintForRow( int row ) const

$prototypeV2=bool tabKeyNavigation() const

$prototypeV2=Qt::TextElideMode textElideMode() const

$prototypeV2=QAbstractItemView::ScrollMode verticalScrollMode() const

$prototypeV2=virtual QRect visualRect( const QModelIndex & index ) const = 0

$prototypeV2=virtual QVariant inputMethodQuery( Qt::InputMethodQuery query ) const

$prototypeV2=void clearSelection()

$prototypeV2=void edit( const QModelIndex & index )

$prototypeV2=virtual void reset()

$prototypeV2=void scrollToBottom()

$prototypeV2=void scrollToTop()

$prototypeV2=virtual void selectAll()

$prototypeV2=void setCurrentIndex( const QModelIndex & index )

$prototypeV2=virtual void setRootIndex( const QModelIndex & index )

$prototypeV2=void update( const QModelIndex & index )

$beginSignals
$signal=|activated(QModelIndex)
$signal=|clicked(QModelIndex)
$signal=|doubleClicked(QModelIndex)
$signal=|entered(QModelIndex)
$signal=|pressed(QModelIndex)
$signal=|viewportEntered()
$endSignals

#pragma ENDDUMP

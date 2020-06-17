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

$prototype=void closePersistentEditor ( const QModelIndex & index )
$method=|void|closePersistentEditor|const QModelIndex &

$prototypeV2=QModelIndex currentIndex() const

$prototypeV2=Qt::DropAction defaultDropAction() const

$prototypeV2=QAbstractItemView::DragDropMode dragDropMode() const

$prototypeV2=bool dragDropOverwriteMode() const

$prototypeV2=bool dragEnabled() const

$prototypeV2=QAbstractItemView::EditTriggers editTriggers() const

$prototypeV2=bool hasAutoScroll() const

$prototypeV2=QAbstractItemView::ScrollMode horizontalScrollMode() const

$prototypeV2=QSize iconSize() const

$prototype=virtual QModelIndex indexAt ( const QPoint & point ) const = 0
$virtualMethod=|QModelIndex|indexAt|const QPoint &

$prototype=QWidget * indexWidget ( const QModelIndex & index ) const
$method=|QWidget *|indexWidget|const QModelIndex &

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

$prototype=QAbstractItemDelegate * itemDelegateForColumn ( int column ) const
$method=|QAbstractItemDelegate *|itemDelegateForColumn|int

$prototype=QAbstractItemDelegate * itemDelegateForRow ( int row ) const
$method=|QAbstractItemDelegate *|itemDelegateForRow|int

$prototype=virtual void keyboardSearch ( const QString & search )
$virtualMethod=|void|keyboardSearch|const QString &

$prototypeV2=QAbstractItemModel * model() const

$prototype=void openPersistentEditor ( const QModelIndex & index )
$method=|void|openPersistentEditor|const QModelIndex &

$prototypeV2=QModelIndex rootIndex() const

$prototype=virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible ) = 0
$virtualMethod=|void|scrollTo|const QModelIndex &,QAbstractItemView::ScrollHint=QAbstractItemView::EnsureVisible

$prototypeV2=QAbstractItemView::SelectionBehavior selectionBehavior() const

$prototypeV2=QAbstractItemView::SelectionMode selectionMode() const

$prototypeV2=QItemSelectionModel * selectionModel() const

$prototype=void setAlternatingRowColors ( bool enable )
$method=|void|setAlternatingRowColors|bool

$prototype=void setAutoScroll ( bool enable )
$method=|void|setAutoScroll|bool

$prototype=void setAutoScrollMargin ( int margin )
$method=|void|setAutoScrollMargin|int

$prototype=void setDefaultDropAction ( Qt::DropAction dropAction )
$method=|void|setDefaultDropAction|Qt::DropAction

$prototype=void setDragDropMode ( DragDropMode behavior )
$method=|void|setDragDropMode|QAbstractItemView::DragDropMode

$prototype=void setDragDropOverwriteMode ( bool overwrite )
$method=|void|setDragDropOverwriteMode|bool

$prototype=void setDragEnabled ( bool enable )
$method=|void|setDragEnabled|bool

$prototype=void setDropIndicatorShown ( bool enable )
$method=|void|setDropIndicatorShown|bool

$prototype=void setEditTriggers ( EditTriggers triggers )
$method=|void|setEditTriggers|QAbstractItemView::EditTriggers

$prototype=void setHorizontalScrollMode ( ScrollMode mode )
$method=|void|setHorizontalScrollMode|QAbstractItemView::ScrollMode

$prototype=void setIconSize ( const QSize & size )
$method=|void|setIconSize|const QSize &

$prototype=void setIndexWidget ( const QModelIndex & index, QWidget * widget )
$method=|void|setIndexWidget|const QModelIndex &,QWidget *

$prototype=void setItemDelegate ( QAbstractItemDelegate * delegate )
$method=|void|setItemDelegate|QAbstractItemDelegate *

$prototype=void setItemDelegateForColumn ( int column, QAbstractItemDelegate * delegate )
$method=|void|setItemDelegateForColumn|int,QAbstractItemDelegate *

$prototype=void setItemDelegateForRow ( int row, QAbstractItemDelegate * delegate )
$method=|void|setItemDelegateForRow|int,QAbstractItemDelegate *

$prototype=virtual void setModel ( QAbstractItemModel * model )
$virtualMethod=|void|setModel|QAbstractItemModel *

$prototype=void setSelectionBehavior ( QAbstractItemView::SelectionBehavior behavior )
$method=|void|setSelectionBehavior|QAbstractItemView::SelectionBehavior

$prototype=void setSelectionMode ( QAbstractItemView::SelectionMode mode )
$method=|void|setSelectionMode|QAbstractItemView::SelectionMode

$prototype=virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
$virtualMethod=|void|setSelectionModel|QItemSelectionModel *

$prototype=void setTabKeyNavigation ( bool enable )
$method=|void|setTabKeyNavigation|bool

$prototype=void setTextElideMode ( Qt::TextElideMode mode )
$method=|void|setTextElideMode|Qt::TextElideMode

$prototype=void setVerticalScrollMode ( ScrollMode mode )
$method=|void|setVerticalScrollMode|QAbstractItemView::ScrollMode

$prototypeV2=bool showDropIndicator() const

$prototype=virtual int sizeHintForColumn ( int column ) const
$virtualMethod=|int|sizeHintForColumn|int

$prototype=QSize sizeHintForIndex ( const QModelIndex & index ) const
$method=|QSize|sizeHintForIndex|const QModelIndex &

$prototype=virtual int sizeHintForRow ( int row ) const
$virtualMethod=|int|sizeHintForRow|int

$prototypeV2=bool tabKeyNavigation() const

$prototypeV2=Qt::TextElideMode textElideMode() const

$prototypeV2=QAbstractItemView::ScrollMode verticalScrollMode() const

$prototype=virtual QRect visualRect ( const QModelIndex & index ) const = 0
$virtualMethod=|QRect|visualRect|const QModelIndex &

$prototype=virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototypeV2=void clearSelection()

$prototype=void edit ( const QModelIndex & index )
$method=|void|edit|const QModelIndex &

$prototypeV2=virtual void reset()

$prototypeV2=void scrollToBottom()

$prototypeV2=void scrollToTop()

$prototypeV2=virtual void selectAll()

$prototype=void setCurrentIndex ( const QModelIndex & index )
$method=|void|setCurrentIndex|const QModelIndex &

$prototype=virtual void setRootIndex ( const QModelIndex & index )
$virtualMethod=|void|setRootIndex|const QModelIndex &

$prototype=void update ( const QModelIndex & index )
$method=|void|update|const QModelIndex &

$beginSignals
$signal=|activated(QModelIndex)
$signal=|clicked(QModelIndex)
$signal=|doubleClicked(QModelIndex)
$signal=|entered(QModelIndex)
$signal=|pressed(QModelIndex)
$signal=|viewportEntered()
$endSignals

#pragma ENDDUMP

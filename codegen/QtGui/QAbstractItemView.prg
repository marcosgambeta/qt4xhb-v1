%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
REQUEST QSIZE
REQUEST QWIDGET
REQUEST QABSTRACTITEMDELEGATE
REQUEST QABSTRACTITEMMODEL
REQUEST QITEMSELECTIONMODEL
REQUEST QRECT
REQUEST QVARIANT
#endif

CLASS QAbstractItemView INHERIT QAbstractScrollArea

   METHOD delete
   METHOD alternatingRowColors
   METHOD autoScrollMargin
   METHOD closePersistentEditor
   METHOD currentIndex
   METHOD defaultDropAction
   METHOD dragDropMode
   METHOD dragDropOverwriteMode
   METHOD dragEnabled
   METHOD editTriggers
   METHOD hasAutoScroll
   METHOD horizontalScrollMode
   METHOD iconSize
   METHOD indexAt
   METHOD indexWidget
   METHOD itemDelegate
   METHOD itemDelegateForColumn
   METHOD itemDelegateForRow
   METHOD keyboardSearch
   METHOD model
   METHOD openPersistentEditor
   METHOD rootIndex
   METHOD scrollTo
   METHOD selectionBehavior
   METHOD selectionMode
   METHOD selectionModel
   METHOD setAlternatingRowColors
   METHOD setAutoScroll
   METHOD setAutoScrollMargin
   METHOD setDefaultDropAction
   METHOD setDragDropMode
   METHOD setDragDropOverwriteMode
   METHOD setDragEnabled
   METHOD setDropIndicatorShown
   METHOD setEditTriggers
   METHOD setHorizontalScrollMode
   METHOD setIconSize
   METHOD setIndexWidget
   METHOD setItemDelegate
   METHOD setItemDelegateForColumn
   METHOD setItemDelegateForRow
   METHOD setModel
   METHOD setSelectionBehavior
   METHOD setSelectionMode
   METHOD setSelectionModel
   METHOD setTabKeyNavigation
   METHOD setTextElideMode
   METHOD setVerticalScrollMode
   METHOD showDropIndicator
   METHOD sizeHintForColumn
   METHOD sizeHintForIndex
   METHOD sizeHintForRow
   METHOD tabKeyNavigation
   METHOD textElideMode
   METHOD verticalScrollMode
   METHOD visualRect
   METHOD inputMethodQuery
   METHOD clearSelection
   METHOD edit
   METHOD reset
   METHOD scrollToBottom
   METHOD scrollToTop
   METHOD selectAll
   METHOD setCurrentIndex
   METHOD setRootIndex
   METHOD update

   METHOD onActivated
   METHOD onClicked
   METHOD onDoubleClicked
   METHOD onEntered
   METHOD onPressed
   METHOD onViewportEntered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=bool alternatingRowColors () const
$method=|bool|alternatingRowColors|

$prototype=int autoScrollMargin () const
$method=|int|autoScrollMargin|

$prototype=void closePersistentEditor ( const QModelIndex & index )
$method=|void|closePersistentEditor|const QModelIndex &

$prototype=QModelIndex currentIndex () const
$method=|QModelIndex|currentIndex|

$prototype=Qt::DropAction defaultDropAction () const
$method=|Qt::DropAction|defaultDropAction|

$prototype=DragDropMode dragDropMode () const
$method=|QAbstractItemView::DragDropMode|dragDropMode|

$prototype=bool dragDropOverwriteMode () const
$method=|bool|dragDropOverwriteMode|

$prototype=bool dragEnabled () const
$method=|bool|dragEnabled|

$prototype=EditTriggers editTriggers () const
$method=|QAbstractItemView::EditTriggers|editTriggers|

$prototype=bool hasAutoScroll () const
$method=|bool|hasAutoScroll|

$prototype=ScrollMode horizontalScrollMode () const
$method=|QAbstractItemView::ScrollMode|horizontalScrollMode|

$prototype=QSize iconSize () const
$method=|QSize|iconSize|

$prototype=virtual QModelIndex indexAt ( const QPoint & point ) const = 0
$virtualMethod=|QModelIndex|indexAt|const QPoint &

$prototype=QWidget * indexWidget ( const QModelIndex & index ) const
$method=|QWidget *|indexWidget|const QModelIndex &

$prototype=QAbstractItemDelegate * itemDelegate () const
$internalMethod=|QAbstractItemDelegate *|itemDelegate,itemDelegate1|

$prototype=QAbstractItemDelegate * itemDelegate ( const QModelIndex & index ) const
$internalMethod=|QAbstractItemDelegate *|itemDelegate,itemDelegate2|const QModelIndex &

//[1]QAbstractItemDelegate * itemDelegate () const
//[2]QAbstractItemDelegate * itemDelegate ( const QModelIndex & index ) const

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

$prototype=QAbstractItemDelegate * itemDelegateForColumn ( int column ) const
$method=|QAbstractItemDelegate *|itemDelegateForColumn|int

$prototype=QAbstractItemDelegate * itemDelegateForRow ( int row ) const
$method=|QAbstractItemDelegate *|itemDelegateForRow|int

$prototype=virtual void keyboardSearch ( const QString & search )
$virtualMethod=|void|keyboardSearch|const QString &

$prototype=QAbstractItemModel * model () const
$method=|QAbstractItemModel *|model|

$prototype=void openPersistentEditor ( const QModelIndex & index )
$method=|void|openPersistentEditor|const QModelIndex &

$prototype=QModelIndex rootIndex () const
$method=|QModelIndex|rootIndex|

$prototype=virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible ) = 0
$virtualMethod=|void|scrollTo|const QModelIndex &,QAbstractItemView::ScrollHint=QAbstractItemView::EnsureVisible

$prototype=QAbstractItemView::SelectionBehavior selectionBehavior () const
$method=|QAbstractItemView::SelectionBehavior|selectionBehavior|

$prototype=QAbstractItemView::SelectionMode selectionMode () const
$method=|QAbstractItemView::SelectionMode|selectionMode|

$prototype=QItemSelectionModel * selectionModel () const
$method=|QItemSelectionModel *|selectionModel|

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

$prototype=bool showDropIndicator () const
$method=|bool|showDropIndicator|

$prototype=virtual int sizeHintForColumn ( int column ) const
$virtualMethod=|int|sizeHintForColumn|int

$prototype=QSize sizeHintForIndex ( const QModelIndex & index ) const
$method=|QSize|sizeHintForIndex|const QModelIndex &

$prototype=virtual int sizeHintForRow ( int row ) const
$virtualMethod=|int|sizeHintForRow|int

$prototype=bool tabKeyNavigation () const
$method=|bool|tabKeyNavigation|

$prototype=Qt::TextElideMode textElideMode () const
$method=|Qt::TextElideMode|textElideMode|

$prototype=ScrollMode verticalScrollMode () const
$method=|QAbstractItemView::ScrollMode|verticalScrollMode|

$prototype=virtual QRect visualRect ( const QModelIndex & index ) const = 0
$virtualMethod=|QRect|visualRect|const QModelIndex &

$prototype=virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

$prototype=void clearSelection ()
$method=|void|clearSelection|

$prototype=void edit ( const QModelIndex & index )
$method=|void|edit|const QModelIndex &

$prototype=virtual void reset ()
$virtualMethod=|void|reset|

$prototype=void scrollToBottom ()
$method=|void|scrollToBottom|

$prototype=void scrollToTop ()
$method=|void|scrollToTop|

$prototype=virtual void selectAll ()
$virtualMethod=|void|selectAll|

$prototype=void setCurrentIndex ( const QModelIndex & index )
$method=|void|setCurrentIndex|const QModelIndex &

$prototype=virtual void setRootIndex ( const QModelIndex & index )
$virtualMethod=|void|setRootIndex|const QModelIndex &

$prototype=void update ( const QModelIndex & index )
$method=|void|update|const QModelIndex &

#pragma ENDDUMP

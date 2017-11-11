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

#include <QAbstractItemView>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
bool alternatingRowColors () const
*/
$method=|bool|alternatingRowColors|

/*
int autoScrollMargin () const
*/
$method=|int|autoScrollMargin|

/*
void closePersistentEditor ( const QModelIndex & index )
*/
$method=|void|closePersistentEditor|const QModelIndex &

/*
QModelIndex currentIndex () const
*/
$method=|QModelIndex|currentIndex|

/*
Qt::DropAction defaultDropAction () const
*/
$method=|Qt::DropAction|defaultDropAction|

/*
DragDropMode dragDropMode () const
*/
$method=|QAbstractItemView::DragDropMode|dragDropMode|

/*
bool dragDropOverwriteMode () const
*/
$method=|bool|dragDropOverwriteMode|

/*
bool dragEnabled () const
*/
$method=|bool|dragEnabled|

/*
EditTriggers editTriggers () const
*/
$method=|QAbstractItemView::EditTriggers|editTriggers|

/*
bool hasAutoScroll () const
*/
$method=|bool|hasAutoScroll|

/*
ScrollMode horizontalScrollMode () const
*/
$method=|QAbstractItemView::ScrollMode|horizontalScrollMode|

/*
QSize iconSize () const
*/
$method=|QSize|iconSize|

/*
virtual QModelIndex indexAt ( const QPoint & point ) const = 0
*/
$virtualMethod=|QModelIndex|indexAt|const QPoint &

/*
QWidget * indexWidget ( const QModelIndex & index ) const
*/
$method=|QWidget *|indexWidget|const QModelIndex &

/*
QAbstractItemDelegate * itemDelegate () const
*/
$internalMethod=|QAbstractItemDelegate *|itemDelegate,itemDelegate1|

/*
QAbstractItemDelegate * itemDelegate ( const QModelIndex & index ) const
*/
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

/*
QAbstractItemDelegate * itemDelegateForColumn ( int column ) const
*/
$method=|QAbstractItemDelegate *|itemDelegateForColumn|int

/*
QAbstractItemDelegate * itemDelegateForRow ( int row ) const
*/
$method=|QAbstractItemDelegate *|itemDelegateForRow|int

/*
virtual void keyboardSearch ( const QString & search )
*/
$virtualMethod=|void|keyboardSearch|const QString &

/*
QAbstractItemModel * model () const
*/
$method=|QAbstractItemModel *|model|

/*
void openPersistentEditor ( const QModelIndex & index )
*/
$method=|void|openPersistentEditor|const QModelIndex &

/*
QModelIndex rootIndex () const
*/
$method=|QModelIndex|rootIndex|

/*
virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible ) = 0
*/
$virtualMethod=|void|scrollTo|const QModelIndex &,QAbstractItemView::ScrollHint=QAbstractItemView::EnsureVisible

/*
QAbstractItemView::SelectionBehavior selectionBehavior () const
*/
$method=|QAbstractItemView::SelectionBehavior|selectionBehavior|

/*
QAbstractItemView::SelectionMode selectionMode () const
*/
$method=|QAbstractItemView::SelectionMode|selectionMode|

/*
QItemSelectionModel * selectionModel () const
*/
$method=|QItemSelectionModel *|selectionModel|

/*
void setAlternatingRowColors ( bool enable )
*/
$method=|void|setAlternatingRowColors|bool

/*
void setAutoScroll ( bool enable )
*/
$method=|void|setAutoScroll|bool

/*
void setAutoScrollMargin ( int margin )
*/
$method=|void|setAutoScrollMargin|int

/*
void setDefaultDropAction ( Qt::DropAction dropAction )
*/
$method=|void|setDefaultDropAction|Qt::DropAction

/*
void setDragDropMode ( DragDropMode behavior )
*/
$method=|void|setDragDropMode|QAbstractItemView::DragDropMode

/*
void setDragDropOverwriteMode ( bool overwrite )
*/
$method=|void|setDragDropOverwriteMode|bool

/*
void setDragEnabled ( bool enable )
*/
$method=|void|setDragEnabled|bool

/*
void setDropIndicatorShown ( bool enable )
*/
$method=|void|setDropIndicatorShown|bool

/*
void setEditTriggers ( EditTriggers triggers )
*/
$method=|void|setEditTriggers|QAbstractItemView::EditTriggers

/*
void setHorizontalScrollMode ( ScrollMode mode )
*/
$method=|void|setHorizontalScrollMode|QAbstractItemView::ScrollMode

/*
void setIconSize ( const QSize & size )
*/
$method=|void|setIconSize|const QSize &

/*
void setIndexWidget ( const QModelIndex & index, QWidget * widget )
*/
$method=|void|setIndexWidget|const QModelIndex &,QWidget *

/*
void setItemDelegate ( QAbstractItemDelegate * delegate )
*/
$method=|void|setItemDelegate|QAbstractItemDelegate *

/*
void setItemDelegateForColumn ( int column, QAbstractItemDelegate * delegate )
*/
$method=|void|setItemDelegateForColumn|int,QAbstractItemDelegate *

/*
void setItemDelegateForRow ( int row, QAbstractItemDelegate * delegate )
*/
$method=|void|setItemDelegateForRow|int,QAbstractItemDelegate *

/*
virtual void setModel ( QAbstractItemModel * model )
*/
$virtualMethod=|void|setModel|QAbstractItemModel *

/*
void setSelectionBehavior ( QAbstractItemView::SelectionBehavior behavior )
*/
$method=|void|setSelectionBehavior|QAbstractItemView::SelectionBehavior

/*
void setSelectionMode ( QAbstractItemView::SelectionMode mode )
*/
$method=|void|setSelectionMode|QAbstractItemView::SelectionMode

/*
virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
*/
$virtualMethod=|void|setSelectionModel|QItemSelectionModel *

/*
void setTabKeyNavigation ( bool enable )
*/
$method=|void|setTabKeyNavigation|bool

/*
void setTextElideMode ( Qt::TextElideMode mode )
*/
$method=|void|setTextElideMode|Qt::TextElideMode

/*
void setVerticalScrollMode ( ScrollMode mode )
*/
$method=|void|setVerticalScrollMode|QAbstractItemView::ScrollMode

/*
bool showDropIndicator () const
*/
$method=|bool|showDropIndicator|

/*
virtual int sizeHintForColumn ( int column ) const
*/
$virtualMethod=|int|sizeHintForColumn|int

/*
QSize sizeHintForIndex ( const QModelIndex & index ) const
*/
$method=|QSize|sizeHintForIndex|const QModelIndex &

/*
virtual int sizeHintForRow ( int row ) const
*/
$virtualMethod=|int|sizeHintForRow|int

/*
bool tabKeyNavigation () const
*/
$method=|bool|tabKeyNavigation|

/*
Qt::TextElideMode textElideMode () const
*/
$method=|Qt::TextElideMode|textElideMode|

/*
ScrollMode verticalScrollMode () const
*/
$method=|QAbstractItemView::ScrollMode|verticalScrollMode|

/*
virtual QRect visualRect ( const QModelIndex & index ) const = 0
*/
$virtualMethod=|QRect|visualRect|const QModelIndex &

/*
virtual QVariant inputMethodQuery ( Qt::InputMethodQuery query ) const
*/
$virtualMethod=|QVariant|inputMethodQuery|Qt::InputMethodQuery

/*
void clearSelection ()
*/
$method=|void|clearSelection|

/*
void edit ( const QModelIndex & index )
*/
$method=|void|edit|const QModelIndex &

/*
virtual void reset ()
*/
$virtualMethod=|void|reset|

/*
void scrollToBottom ()
*/
$method=|void|scrollToBottom|

/*
void scrollToTop ()
*/
$method=|void|scrollToTop|

/*
virtual void selectAll ()
*/
$virtualMethod=|void|selectAll|

/*
void setCurrentIndex ( const QModelIndex & index )
*/
$method=|void|setCurrentIndex|const QModelIndex &

/*
virtual void setRootIndex ( const QModelIndex & index )
*/
$virtualMethod=|void|setRootIndex|const QModelIndex &

/*
void update ( const QModelIndex & index )
*/
$method=|void|update|const QModelIndex &

#pragma ENDDUMP

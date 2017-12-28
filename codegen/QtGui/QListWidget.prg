$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QLISTWIDGETITEM
REQUEST QWIDGET
REQUEST QRECT
#endif

CLASS QListWidget INHERIT QListView

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD addItems
   METHOD closePersistentEditor
   METHOD count
   METHOD currentItem
   METHOD currentRow
   METHOD editItem
   METHOD findItems
   METHOD insertItem
   METHOD insertItems
   METHOD isSortingEnabled
   METHOD item
   METHOD itemAt
   METHOD itemWidget
   METHOD openPersistentEditor
   METHOD removeItemWidget
   METHOD row
   METHOD selectedItems
   METHOD setCurrentItem
   METHOD setCurrentRow
   METHOD setItemWidget
   METHOD setSortingEnabled
   METHOD sortItems
   METHOD takeItem
   METHOD visualItemRect
   METHOD dropEvent
   METHOD clear
   METHOD scrollToItem

   METHOD onCurrentItemChanged
   METHOD onCurrentRowChanged
   METHOD onCurrentTextChanged
   METHOD onItemActivated
   METHOD onItemChanged
   METHOD onItemClicked
   METHOD onItemDoubleClicked
   METHOD onItemEntered
   METHOD onItemPressed
   METHOD onItemSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QListWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QListWidget ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=void addItem ( const QString & label )
$internalMethod=|void|addItem,addItem1|const QString &

$prototype=void addItem ( QListWidgetItem * item )
$internalMethod=|void|addItem,addItem2|QListWidgetItem *

//[1]void addItem ( const QString & label )
//[2]void addItem ( QListWidgetItem * item )

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

$prototype=void addItems ( const QStringList & labels )
$method=|void|addItems|const QStringList &

$prototype=void closePersistentEditor ( QListWidgetItem * item )
$method=|void|closePersistentEditor|QListWidgetItem *

$prototype=int count () const
$method=|int|count|

$prototype=QListWidgetItem * currentItem () const
$method=|QListWidgetItem *|currentItem|

$prototype=int currentRow () const
$method=|int|currentRow|

$prototype=void editItem ( QListWidgetItem * item )
$method=|void|editItem|QListWidgetItem *

$prototype=QList<QListWidgetItem *> findItems ( const QString & text, Qt::MatchFlags flags ) const
HB_FUNC_STATIC( QLISTWIDGET_FINDITEMS )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par2 = hb_parni(2);
    QList<QListWidgetItem *> list = obj->findItems ( PQSTRING(1), (Qt::MatchFlags) par2 );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QLISTWIDGETITEM" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QListWidgetItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=void insertItem ( int row, QListWidgetItem * item )
$internalMethod=|void|insertItem,insertItem1|int,QListWidgetItem *

$prototype=void insertItem ( int row, const QString & label )
$internalMethod=|void|insertItem,insertItem2|int,const QString &

//[1]void insertItem ( int row, QListWidgetItem * item )
//[2]void insertItem ( int row, const QString & label )

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

$prototype=void insertItems ( int row, const QStringList & labels )
$method=|void|insertItems|int,const QStringList &

$prototype=bool isSortingEnabled () const
$method=|bool|isSortingEnabled|

$prototype=QListWidgetItem * item ( int row ) const
$method=|QListWidgetItem *|item|int

$prototype=QListWidgetItem * itemAt ( const QPoint & p ) const
$internalMethod=|QListWidgetItem *|itemAt,itemAt1|const QPoint &

$prototype=QListWidgetItem * itemAt ( int x, int y ) const
$internalMethod=|QListWidgetItem *|itemAt,itemAt2|int,int

//[1]QListWidgetItem * itemAt ( const QPoint & p ) const
//[2]QListWidgetItem * itemAt ( int x, int y ) const

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

$prototype=QWidget * itemWidget ( QListWidgetItem * item ) const
$method=|QWidget *|itemWidget|QListWidgetItem *

$prototype=void openPersistentEditor ( QListWidgetItem * item )
$method=|void|openPersistentEditor|QListWidgetItem *

$prototype=void removeItemWidget ( QListWidgetItem * item )
$method=|void|removeItemWidget|QListWidgetItem *

$prototype=int row ( const QListWidgetItem * item ) const
$method=|int|row|const QListWidgetItem *

$prototype=QList<QListWidgetItem *> selectedItems () const
HB_FUNC_STATIC( QLISTWIDGET_SELECTEDITEMS )
{
  QListWidget * obj = (QListWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QListWidgetItem *> list = obj->selectedItems ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QLISTWIDGETITEM" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QListWidgetItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=void setCurrentItem ( QListWidgetItem * item )
$internalMethod=|void|setCurrentItem,setCurrentItem1|QListWidgetItem *

$prototype=void setCurrentItem ( QListWidgetItem * item, QItemSelectionModel::SelectionFlags command )
$internalMethod=|void|setCurrentItem,setCurrentItem2|QListWidgetItem *,QItemSelectionModel::SelectionFlags

//[1]void setCurrentItem ( QListWidgetItem * item )
//[2]void setCurrentItem ( QListWidgetItem * item, QItemSelectionModel::SelectionFlags command )

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

$prototype=void setCurrentRow ( int row )
$internalMethod=|void|setCurrentRow,setCurrentRow1|int

$prototype=void setCurrentRow ( int row, QItemSelectionModel::SelectionFlags command )
$internalMethod=|void|setCurrentRow,setCurrentRow2|int,QItemSelectionModel::SelectionFlags

//[1]void setCurrentRow ( int row )
//[2]void setCurrentRow ( int row, QItemSelectionModel::SelectionFlags command )

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

$prototype=void setItemWidget ( QListWidgetItem * item, QWidget * widget )
$method=|void|setItemWidget|QListWidgetItem *,QWidget *

$prototype=void setSortingEnabled ( bool enable )
$method=|void|setSortingEnabled|bool

$prototype=void sortItems ( Qt::SortOrder order = Qt::AscendingOrder )
$method=|void|sortItems|Qt::SortOrder=Qt::AscendingOrder

$prototype=QListWidgetItem * takeItem ( int row )
$method=|QListWidgetItem *|takeItem|int

$prototype=QRect visualItemRect ( const QListWidgetItem * item ) const
$method=|QRect|visualItemRect|const QListWidgetItem *

$prototype=virtual void dropEvent ( QDropEvent * event )
$virtualMethod=|void|dropEvent|QDropEvent *

$prototype=void clear ()
$method=|void|clear|

$prototype=void scrollToItem ( const QListWidgetItem * item, QAbstractItemView::ScrollHint hint = EnsureVisible )
$method=|void|scrollToItem|const QListWidgetItem *,QAbstractItemView::ScrollHint=QAbstractItemView::EnsureVisible

#pragma ENDDUMP

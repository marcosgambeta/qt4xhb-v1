$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QTABLEWIDGETITEM
REQUEST QTABLEWIDGETSELECTIONRANGE
REQUEST QRECT
#endif

CLASS QTableWidget INHERIT QTableView

   METHOD new
   METHOD delete
   METHOD cellWidget
   METHOD closePersistentEditor
   METHOD column
   METHOD columnCount
   METHOD currentColumn
   METHOD currentItem
   METHOD currentRow
   METHOD editItem
   METHOD findItems
   METHOD horizontalHeaderItem
   METHOD item
   METHOD itemAt
   METHOD openPersistentEditor
   METHOD removeCellWidget
   METHOD row
   METHOD rowCount
   METHOD selectedItems
   METHOD selectedRanges
   METHOD setCellWidget
   METHOD setColumnCount
   METHOD setCurrentCell
   METHOD setCurrentItem
   METHOD setHorizontalHeaderItem
   METHOD setHorizontalHeaderLabels
   METHOD setItem
   METHOD setItemPrototype
   METHOD setRangeSelected
   METHOD setRowCount
   METHOD setVerticalHeaderItem
   METHOD setVerticalHeaderLabels
   METHOD sortItems
   METHOD takeHorizontalHeaderItem
   METHOD takeItem
   METHOD takeVerticalHeaderItem
   METHOD verticalHeaderItem
   METHOD visualColumn
   METHOD visualItemRect
   METHOD visualRow
   METHOD clear
   METHOD clearContents
   METHOD insertColumn
   METHOD insertRow
   METHOD removeColumn
   METHOD removeRow
   METHOD scrollToItem

   METHOD onCellActivated
   METHOD onCellChanged
   METHOD onCellClicked
   METHOD onCellDoubleClicked
   METHOD onCellEntered
   METHOD onCellPressed
   METHOD onCurrentCellChanged
   METHOD onCurrentItemChanged
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

#include <QTableWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QTableWidget ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QTableWidget ( int rows, int columns, QWidget * parent = 0 )
$internalConstructor=|new2|int,int,QWidget *=0

//[1]QTableWidget ( QWidget * parent = 0 )
//[2]QTableWidget ( int rows, int columns, QWidget * parent = 0 )

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

$deleteMethod

$prototype=QWidget * cellWidget ( int row, int column ) const
$method=|QWidget *|cellWidget|int,int

$prototype=void closePersistentEditor ( QTableWidgetItem * item )
$method=|void|closePersistentEditor|QTableWidgetItem *

$prototype=int column ( const QTableWidgetItem * item ) const
$method=|int|column|const QTableWidgetItem *

$prototype=int columnCount () const
$method=|int|columnCount|

$prototype=int currentColumn () const
$method=|int|currentColumn|

$prototype=QTableWidgetItem * currentItem () const
$method=|QTableWidgetItem *|currentItem|

$prototype=int currentRow () const
$method=|int|currentRow|

$prototype=void editItem ( QTableWidgetItem * item )
$method=|void|editItem|QTableWidgetItem *

$prototype=QList<QTableWidgetItem *> findItems ( const QString & text, Qt::MatchFlags flags ) const
HB_FUNC_STATIC( QTABLEWIDGET_FINDITEMS )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par2 = hb_parni(2);
    QList<QTableWidgetItem *> list = obj->findItems ( PQSTRING(1), (Qt::MatchFlags) par2 );
    PHB_DYNS pDynSym = hb_dynsymFindName( "QTABLEWIDGETITEM" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QTableWidgetItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QTableWidgetItem * horizontalHeaderItem ( int column ) const
$method=|QTableWidgetItem *|horizontalHeaderItem|int

$prototype=QTableWidgetItem * item ( int row, int column ) const
$method=|QTableWidgetItem *|item|int,int

$prototype=QTableWidgetItem * itemAt ( const QPoint & point ) const
$internalMethod=|QTableWidgetItem *|itemAt,itemAt1|const QPoint &

$prototype=QTableWidgetItem * itemAt ( int ax, int ay ) const
$internalMethod=|QTableWidgetItem *|itemAt,itemAt2|int,int

//[1]QTableWidgetItem * itemAt ( const QPoint & point ) const
//[2]QTableWidgetItem * itemAt ( int ax, int ay ) const

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

$prototype=void openPersistentEditor ( QTableWidgetItem * item )
$method=|void|openPersistentEditor|QTableWidgetItem *

$prototype=void removeCellWidget ( int row, int column )
$method=|void|removeCellWidget|int,int

$prototype=int row ( const QTableWidgetItem * item ) const
$method=|int|row|const QTableWidgetItem *

$prototype=int rowCount () const
$method=|int|rowCount|

$prototype=QList<QTableWidgetItem *> selectedItems ()
HB_FUNC_STATIC( QTABLEWIDGET_SELECTEDITEMS )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QTableWidgetItem *> list = obj->selectedItems ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QTABLEWIDGETITEM" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QTableWidgetItem *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=QList<QTableWidgetSelectionRange> selectedRanges () const
HB_FUNC_STATIC( QTABLEWIDGET_SELECTEDRANGES )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QTableWidgetSelectionRange> list = obj->selectedRanges ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QTABLEWIDGETSELECTIONRANGE" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QTableWidgetSelectionRange *) new QTableWidgetSelectionRange ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

$prototype=void setCellWidget ( int row, int column, QWidget * widget )
$method=|void|setCellWidget|int,int,QWidget *

$prototype=void setColumnCount ( int columns )
$method=|void|setColumnCount|int

$prototype=void setCurrentCell ( int row, int column )
$internalMethod=|void|setCurrentCell,setCurrentCell1|int,int

$prototype=void setCurrentCell ( int row, int column, QItemSelectionModel::SelectionFlags command )
$internalMethod=|void|setCurrentCell,setCurrentCell2|int,int,QItemSelectionModel::SelectionFlags

//[1]void setCurrentCell ( int row, int column )
//[2]void setCurrentCell ( int row, int column, QItemSelectionModel::SelectionFlags command )

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

$prototype=void setCurrentItem ( QTableWidgetItem * item )
$internalMethod=|void|setCurrentItem,setCurrentItem1|QTableWidgetItem *

$prototype=void setCurrentItem ( QTableWidgetItem * item, QItemSelectionModel::SelectionFlags command )
$internalMethod=|void|setCurrentItem,setCurrentItem2|QTableWidgetItem *,QItemSelectionModel::SelectionFlags

//[1]void setCurrentItem ( QTableWidgetItem * item )
//[2]void setCurrentItem ( QTableWidgetItem * item, QItemSelectionModel::SelectionFlags command )

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

$prototype=void setHorizontalHeaderItem ( int column, QTableWidgetItem * item )
$method=|void|setHorizontalHeaderItem|int,QTableWidgetItem *

$prototype=void setHorizontalHeaderLabels ( const QStringList & labels )
$method=|void|setHorizontalHeaderLabels|const QStringList &

$prototype=void setItem ( int row, int column, QTableWidgetItem * item )
$method=|void|setItem|int,int,QTableWidgetItem *

$prototype=void setItemPrototype ( const QTableWidgetItem * item )
$method=|void|setItemPrototype|const QTableWidgetItem *

$prototype=void setRangeSelected ( const QTableWidgetSelectionRange & range, bool select )
$method=|void|setRangeSelected|const QTableWidgetSelectionRange &,bool

$prototype=void setRowCount ( int rows )
$method=|void|setRowCount|int

$prototype=void setVerticalHeaderItem ( int row, QTableWidgetItem * item )
$method=|void|setVerticalHeaderItem|int,QTableWidgetItem *

$prototype=void setVerticalHeaderLabels ( const QStringList & labels )
$method=|void|setVerticalHeaderLabels|const QStringList &

$prototype=void sortItems ( int column, Qt::SortOrder order = Qt::AscendingOrder )
$method=|void|sortItems|int,Qt::SortOrder=Qt::AscendingOrder

$prototype=QTableWidgetItem * takeHorizontalHeaderItem ( int column )
$method=|QTableWidgetItem *|takeHorizontalHeaderItem|int

$prototype=QTableWidgetItem * takeItem ( int row, int column )
$method=|QTableWidgetItem *|takeItem|int,int

$prototype=QTableWidgetItem * takeVerticalHeaderItem ( int row )
$method=|QTableWidgetItem *|takeVerticalHeaderItem|int

$prototype=QTableWidgetItem * verticalHeaderItem ( int row ) const
$method=|QTableWidgetItem *|verticalHeaderItem|int

$prototype=int visualColumn ( int logicalColumn ) const
$method=|int|visualColumn|int

$prototype=QRect visualItemRect ( const QTableWidgetItem * item ) const
$method=|QRect|visualItemRect|const QTableWidgetItem *

$prototype=int visualRow ( int logicalRow ) const
$method=|int|visualRow|int

$prototype=void clear ()
$method=|void|clear|

$prototype=void clearContents ()
$method=|void|clearContents|

$prototype=void insertColumn ( int column )
$method=|void|insertColumn|int

$prototype=void insertRow ( int row )
$method=|void|insertRow|int

$prototype=void removeColumn ( int column )
$method=|void|removeColumn|int

$prototype=void removeRow ( int row )
$method=|void|removeRow|int

$prototype=void scrollToItem ( const QTableWidgetItem * item, QAbstractItemView::ScrollHint hint = EnsureVisible )
$method=|void|scrollToItem|const QTableWidgetItem *,QAbstractItemView::ScrollHint=QAbstractItemView::EnsureVisible

#pragma ENDDUMP

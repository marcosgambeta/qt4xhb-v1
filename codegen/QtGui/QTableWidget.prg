$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QTABLEWIDGETITEM
REQUEST QTABLEWIDGETSELECTIONRANGE
REQUEST QRECT
#endif

CLASS QTableWidget INHERIT QTableView

   METHOD new1
   METHOD new2
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
   METHOD itemAt1
   METHOD itemAt2
   METHOD itemAt
   METHOD openPersistentEditor
   METHOD removeCellWidget
   METHOD row
   METHOD rowCount
   METHOD selectedItems
   METHOD selectedRanges
   METHOD setCellWidget
   METHOD setColumnCount
   METHOD setCurrentCell1
   METHOD setCurrentCell2
   METHOD setCurrentCell
   METHOD setCurrentItem1
   METHOD setCurrentItem2
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

/*
QTableWidget ( QWidget * parent = 0 )
*/
$constructor=|new1|QWidget *=0

/*
QTableWidget ( int rows, int columns, QWidget * parent = 0 )
*/
$constructor=|new2|int,int,QWidget *=0

//[1]QTableWidget ( QWidget * parent = 0 )
//[2]QTableWidget ( int rows, int columns, QWidget * parent = 0 )

HB_FUNC_STATIC( QTABLEWIDGET_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QTABLEWIDGET_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISQWIDGET(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QTABLEWIDGET_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QWidget * cellWidget ( int row, int column ) const
*/
$method=|QWidget *|cellWidget|int,int

/*
void closePersistentEditor ( QTableWidgetItem * item )
*/
$method=|void|closePersistentEditor|QTableWidgetItem *

/*
int column ( const QTableWidgetItem * item ) const
*/
$method=|int|column|const QTableWidgetItem *

/*
int columnCount () const
*/
$method=|int|columnCount|

/*
int currentColumn () const
*/
$method=|int|currentColumn|

/*
QTableWidgetItem * currentItem () const
*/
$method=|QTableWidgetItem *|currentItem|

/*
int currentRow () const
*/
$method=|int|currentRow|

/*
void editItem ( QTableWidgetItem * item )
*/
$method=|void|editItem|QTableWidgetItem *

/*
QList<QTableWidgetItem *> findItems ( const QString & text, Qt::MatchFlags flags ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_FINDITEMS )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    int par2 = hb_parni(2);
    QList<QTableWidgetItem *> list = obj->findItems ( PQSTRING(1), (Qt::MatchFlags) par2 );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QTABLEWIDGETITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QTABLEWIDGETITEM" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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

/*
QTableWidgetItem * horizontalHeaderItem ( int column ) const
*/
$method=|QTableWidgetItem *|horizontalHeaderItem|int

/*
QTableWidgetItem * item ( int row, int column ) const
*/
$method=|QTableWidgetItem *|item|int,int

/*
QTableWidgetItem * itemAt ( const QPoint & point ) const
*/
$method=|QTableWidgetItem *|itemAt,itemAt1|const QPoint &

/*
QTableWidgetItem * itemAt ( int ax, int ay ) const
*/
$method=|QTableWidgetItem *|itemAt,itemAt2|int,int

//[1]QTableWidgetItem * itemAt ( const QPoint & point ) const
//[2]QTableWidgetItem * itemAt ( int ax, int ay ) const

HB_FUNC_STATIC( QTABLEWIDGET_ITEMAT )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QTABLEWIDGET_ITEMAT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTABLEWIDGET_ITEMAT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void openPersistentEditor ( QTableWidgetItem * item )
*/
$method=|void|openPersistentEditor|QTableWidgetItem *

/*
void removeCellWidget ( int row, int column )
*/
$method=|void|removeCellWidget|int,int

/*
int row ( const QTableWidgetItem * item ) const
*/
$method=|int|row|const QTableWidgetItem *

/*
int rowCount () const
*/
$method=|int|rowCount|

/*
QList<QTableWidgetItem *> selectedItems ()
*/
HB_FUNC_STATIC( QTABLEWIDGET_SELECTEDITEMS )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QTableWidgetItem *> list = obj->selectedItems ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QTABLEWIDGETITEM" );
    #else
    pDynSym = hb_dynsymFindName( "QTABLEWIDGETITEM" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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

/*
QList<QTableWidgetSelectionRange> selectedRanges () const
*/
HB_FUNC_STATIC( QTABLEWIDGET_SELECTEDRANGES )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QTableWidgetSelectionRange> list = obj->selectedRanges ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QTABLEWIDGETSELECTIONRANGE" );
    #else
    pDynSym = hb_dynsymFindName( "QTABLEWIDGETSELECTIONRANGE" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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

/*
void setCellWidget ( int row, int column, QWidget * widget )
*/
$method=|void|setCellWidget|int,int,QWidget *

/*
void setColumnCount ( int columns )
*/
$method=|void|setColumnCount|int

/*
void setCurrentCell ( int row, int column )
*/
$method=|void|setCurrentCell,setCurrentCell1|int,int

/*
void setCurrentCell ( int row, int column, QItemSelectionModel::SelectionFlags command )
*/
$method=|void|setCurrentCell,setCurrentCell2|int,int,QItemSelectionModel::SelectionFlags

//[1]void setCurrentCell ( int row, int column )
//[2]void setCurrentCell ( int row, int column, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QTABLEWIDGET_SETCURRENTCELL )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTABLEWIDGET_SETCURRENTCELL1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QTABLEWIDGET_SETCURRENTCELL2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setCurrentItem ( QTableWidgetItem * item )
*/
$method=|void|setCurrentItem,setCurrentItem1|QTableWidgetItem *

/*
void setCurrentItem ( QTableWidgetItem * item, QItemSelectionModel::SelectionFlags command )
*/
$method=|void|setCurrentItem,setCurrentItem2|QTableWidgetItem *,QItemSelectionModel::SelectionFlags

//[1]void setCurrentItem ( QTableWidgetItem * item )
//[2]void setCurrentItem ( QTableWidgetItem * item, QItemSelectionModel::SelectionFlags command )

HB_FUNC_STATIC( QTABLEWIDGET_SETCURRENTITEM )
{
  if( ISNUMPAR(1) && ISQTABLEWIDGETITEM(1) )
  {
    HB_FUNC_EXEC( QTABLEWIDGET_SETCURRENTITEM1 );
  }
  else if( ISNUMPAR(2) && ISQTABLEWIDGETITEM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTABLEWIDGET_SETCURRENTITEM2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void setHorizontalHeaderItem ( int column, QTableWidgetItem * item )
*/
$method=|void|setHorizontalHeaderItem|int,QTableWidgetItem *

/*
void setHorizontalHeaderLabels ( const QStringList & labels )
*/
$method=|void|setHorizontalHeaderLabels|const QStringList &

/*
void setItem ( int row, int column, QTableWidgetItem * item )
*/
$method=|void|setItem|int,int,QTableWidgetItem *

/*
void setItemPrototype ( const QTableWidgetItem * item )
*/
$method=|void|setItemPrototype|const QTableWidgetItem *

/*
void setRangeSelected ( const QTableWidgetSelectionRange & range, bool select )
*/
$method=|void|setRangeSelected|const QTableWidgetSelectionRange &,bool

/*
void setRowCount ( int rows )
*/
$method=|void|setRowCount|int

/*
void setVerticalHeaderItem ( int row, QTableWidgetItem * item )
*/
$method=|void|setVerticalHeaderItem|int,QTableWidgetItem *

/*
void setVerticalHeaderLabels ( const QStringList & labels )
*/
$method=|void|setVerticalHeaderLabels|const QStringList &

/*
void sortItems ( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
$method=|void|sortItems|int,Qt::SortOrder=Qt::AscendingOrder

/*
QTableWidgetItem * takeHorizontalHeaderItem ( int column )
*/
$method=|QTableWidgetItem *|takeHorizontalHeaderItem|int

/*
QTableWidgetItem * takeItem ( int row, int column )
*/
$method=|QTableWidgetItem *|takeItem|int,int

/*
QTableWidgetItem * takeVerticalHeaderItem ( int row )
*/
$method=|QTableWidgetItem *|takeVerticalHeaderItem|int

/*
QTableWidgetItem * verticalHeaderItem ( int row ) const
*/
$method=|QTableWidgetItem *|verticalHeaderItem|int

/*
int visualColumn ( int logicalColumn ) const
*/
$method=|int|visualColumn|int

/*
QRect visualItemRect ( const QTableWidgetItem * item ) const
*/
$method=|QRect|visualItemRect|const QTableWidgetItem *

/*
int visualRow ( int logicalRow ) const
*/
$method=|int|visualRow|int

/*
void clear ()
*/
$method=|void|clear|

/*
void clearContents ()
*/
$method=|void|clearContents|

/*
void insertColumn ( int column )
*/
$method=|void|insertColumn|int

/*
void insertRow ( int row )
*/
$method=|void|insertRow|int

/*
void removeColumn ( int column )
*/
$method=|void|removeColumn|int

/*
void removeRow ( int row )
*/
$method=|void|removeRow|int

/*
void scrollToItem ( const QTableWidgetItem * item, QAbstractItemView::ScrollHint hint = EnsureVisible )
*/
$method=|void|scrollToItem|const QTableWidgetItem *,QAbstractItemView::ScrollHint=QAbstractItemView::EnsureVisible

#pragma ENDDUMP

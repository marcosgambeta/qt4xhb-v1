/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QTABLEWIDGETITEM
REQUEST QTABLEWIDGETSELECTIONRANGE
REQUEST QRECT
#endif

CLASS QTableWidget INHERIT QTableView

   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QTableWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTableWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTableWidget ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTABLEWIDGET_NEW1 )
{
  QTableWidget * o = new QTableWidget ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QTableWidget ( int rows, int columns, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTABLEWIDGET_NEW2 )
{
  QTableWidget * o = new QTableWidget ( PINT(1), PINT(2), OPQWIDGET(3,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


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

HB_FUNC_STATIC( QTABLEWIDGET_DELETE )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * cellWidget ( int row, int column ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_CELLWIDGET )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->cellWidget ( PINT(1), PINT(2) );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );
  }
}


/*
void closePersistentEditor ( QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_CLOSEPERSISTENTEDITOR )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTableWidgetItem * par1 = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->closePersistentEditor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int column ( const QTableWidgetItem * item ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_COLUMN )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QTableWidgetItem * par1 = (const QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->column ( par1 ) );
  }
}


/*
int columnCount () const
*/
HB_FUNC_STATIC( QTABLEWIDGET_COLUMNCOUNT )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->columnCount () );
  }
}


/*
int currentColumn () const
*/
HB_FUNC_STATIC( QTABLEWIDGET_CURRENTCOLUMN )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->currentColumn () );
  }
}


/*
QTableWidgetItem * currentItem () const
*/
HB_FUNC_STATIC( QTABLEWIDGET_CURRENTITEM )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTableWidgetItem * ptr = obj->currentItem ();
    _qt4xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
  }
}


/*
int currentRow () const
*/
HB_FUNC_STATIC( QTABLEWIDGET_CURRENTROW )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->currentRow () );
  }
}


/*
void editItem ( QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_EDITITEM )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTableWidgetItem * par1 = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->editItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
HB_FUNC_STATIC( QTABLEWIDGET_HORIZONTALHEADERITEM )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTableWidgetItem * ptr = obj->horizontalHeaderItem ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
  }
}


/*
QTableWidgetItem * item ( int row, int column ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_ITEM )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTableWidgetItem * ptr = obj->item ( PINT(1), PINT(2) );
    _qt4xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
  }
}


/*
QTableWidgetItem * itemAt ( const QPoint & point ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_ITEMAT1 )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTableWidgetItem * ptr = obj->itemAt ( *PQPOINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
  }
}


/*
QTableWidgetItem * itemAt ( int ax, int ay ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_ITEMAT2 )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTableWidgetItem * ptr = obj->itemAt ( PINT(1), PINT(2) );
    _qt4xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
  }
}


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
}


/*
void openPersistentEditor ( QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_OPENPERSISTENTEDITOR )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTableWidgetItem * par1 = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->openPersistentEditor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeCellWidget ( int row, int column )
*/
HB_FUNC_STATIC( QTABLEWIDGET_REMOVECELLWIDGET )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeCellWidget ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int row ( const QTableWidgetItem * item ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_ROW )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QTableWidgetItem * par1 = (const QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RINT( obj->row ( par1 ) );
  }
}


/*
int rowCount () const
*/
HB_FUNC_STATIC( QTABLEWIDGET_ROWCOUNT )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->rowCount () );
  }
}


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
HB_FUNC_STATIC( QTABLEWIDGET_SETCELLWIDGET )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCellWidget ( PINT(1), PINT(2), PQWIDGET(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnCount ( int columns )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETCOLUMNCOUNT )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setColumnCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentCell ( int row, int column )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETCURRENTCELL1 )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCurrentCell ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentCell ( int row, int column, QItemSelectionModel::SelectionFlags command )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETCURRENTCELL2 )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par3 = hb_parni(3);
    obj->setCurrentCell ( PINT(1), PINT(2), (QItemSelectionModel::SelectionFlags) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
}

/*
void setCurrentItem ( QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETCURRENTITEM1 )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTableWidgetItem * par1 = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setCurrentItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCurrentItem ( QTableWidgetItem * item, QItemSelectionModel::SelectionFlags command )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETCURRENTITEM2 )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTableWidgetItem * par1 = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    obj->setCurrentItem ( par1, (QItemSelectionModel::SelectionFlags) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


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
}

/*
void setHorizontalHeaderItem ( int column, QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETHORIZONTALHEADERITEM )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTableWidgetItem * par2 = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setHorizontalHeaderItem ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHorizontalHeaderLabels ( const QStringList & labels )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETHORIZONTALHEADERLABELS )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHorizontalHeaderLabels ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItem ( int row, int column, QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETITEM )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTableWidgetItem * par3 = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setItem ( PINT(1), PINT(2), par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setItemPrototype ( const QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETITEMPROTOTYPE )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QTableWidgetItem * par1 = (const QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setItemPrototype ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRangeSelected ( const QTableWidgetSelectionRange & range, bool select )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETRANGESELECTED )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QTableWidgetSelectionRange  * par1 = (const QTableWidgetSelectionRange  *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setRangeSelected ( *par1, PBOOL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowCount ( int rows )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETROWCOUNT )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRowCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVerticalHeaderItem ( int row, QTableWidgetItem * item )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETVERTICALHEADERITEM )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTableWidgetItem * par2 = (QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setVerticalHeaderItem ( PINT(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVerticalHeaderLabels ( const QStringList & labels )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SETVERTICALHEADERLABELS )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVerticalHeaderLabels ( PQSTRINGLIST(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void sortItems ( int column, Qt::SortOrder order = Qt::AscendingOrder )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SORTITEMS )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) Qt::AscendingOrder : hb_parni(2);
    obj->sortItems ( PINT(1), (Qt::SortOrder) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTableWidgetItem * takeHorizontalHeaderItem ( int column )
*/
HB_FUNC_STATIC( QTABLEWIDGET_TAKEHORIZONTALHEADERITEM )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTableWidgetItem * ptr = obj->takeHorizontalHeaderItem ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
  }
}


/*
QTableWidgetItem * takeItem ( int row, int column )
*/
HB_FUNC_STATIC( QTABLEWIDGET_TAKEITEM )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTableWidgetItem * ptr = obj->takeItem ( PINT(1), PINT(2) );
    _qt4xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
  }
}


/*
QTableWidgetItem * takeVerticalHeaderItem ( int row )
*/
HB_FUNC_STATIC( QTABLEWIDGET_TAKEVERTICALHEADERITEM )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTableWidgetItem * ptr = obj->takeVerticalHeaderItem ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
  }
}


/*
QTableWidgetItem * verticalHeaderItem ( int row ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_VERTICALHEADERITEM )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTableWidgetItem * ptr = obj->verticalHeaderItem ( PINT(1) );
    _qt4xhb_createReturnClass ( ptr, "QTABLEWIDGETITEM" );
  }
}


/*
int visualColumn ( int logicalColumn ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_VISUALCOLUMN )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->visualColumn ( PINT(1) ) );
  }
}


/*
QRect visualItemRect ( const QTableWidgetItem * item ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_VISUALITEMRECT )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QTableWidgetItem * par1 = (const QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->visualItemRect ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


/*
int visualRow ( int logicalRow ) const
*/
HB_FUNC_STATIC( QTABLEWIDGET_VISUALROW )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->visualRow ( PINT(1) ) );
  }
}


/*
void clear ()
*/
HB_FUNC_STATIC( QTABLEWIDGET_CLEAR )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void clearContents ()
*/
HB_FUNC_STATIC( QTABLEWIDGET_CLEARCONTENTS )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearContents ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertColumn ( int column )
*/
HB_FUNC_STATIC( QTABLEWIDGET_INSERTCOLUMN )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->insertColumn ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertRow ( int row )
*/
HB_FUNC_STATIC( QTABLEWIDGET_INSERTROW )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->insertRow ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeColumn ( int column )
*/
HB_FUNC_STATIC( QTABLEWIDGET_REMOVECOLUMN )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeColumn ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeRow ( int row )
*/
HB_FUNC_STATIC( QTABLEWIDGET_REMOVEROW )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeRow ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void scrollToItem ( const QTableWidgetItem * item, QAbstractItemView::ScrollHint hint = EnsureVisible )
*/
HB_FUNC_STATIC( QTABLEWIDGET_SCROLLTOITEM )
{
  QTableWidget * obj = (QTableWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QTableWidgetItem * par1 = (const QTableWidgetItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) QAbstractItemView::EnsureVisible : hb_parni(2);
    obj->scrollToItem ( par1, (QAbstractItemView::ScrollHint) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QHEADERVIEW
REQUEST QMODELINDEX

CLASS QTableView INHERIT QAbstractItemView

   DATA class_id INIT Class_Id_QTableView
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD clearSpans
   METHOD columnAt
   METHOD columnSpan
   METHOD columnViewportPosition
   METHOD columnWidth
   METHOD gridStyle
   METHOD horizontalHeader
   METHOD isColumnHidden
   METHOD isCornerButtonEnabled
   METHOD isRowHidden
   METHOD isSortingEnabled
   METHOD rowAt
   METHOD rowHeight
   METHOD rowSpan
   METHOD rowViewportPosition
   METHOD setColumnHidden
   METHOD setColumnWidth
   METHOD setCornerButtonEnabled
   METHOD setGridStyle
   METHOD setHorizontalHeader
   METHOD setRowHeight
   METHOD setRowHidden
   METHOD setSortingEnabled
   METHOD setSpan
   METHOD setVerticalHeader
   METHOD setWordWrap
   METHOD showGrid
   METHOD sortByColumn
   METHOD verticalHeader
   METHOD wordWrap
   METHOD indexAt
   METHOD setModel
   METHOD setRootIndex
   METHOD setSelectionModel
   METHOD hideColumn
   METHOD hideRow
   METHOD resizeColumnToContents
   METHOD resizeColumnsToContents
   METHOD resizeRowToContents
   METHOD resizeRowsToContents
   METHOD selectColumn
   METHOD selectRow
   METHOD setShowGrid
   METHOD showColumn
   METHOD showRow
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTableView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTableView>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QTableView ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTABLEVIEW_NEW )
{
  QTableView * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTableView ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTableView *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QTABLEVIEW_DELETE )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void clearSpans ()
*/
HB_FUNC_STATIC( QTABLEVIEW_CLEARSPANS )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearSpans (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int columnAt ( int x ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_COLUMNAT )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->columnAt ( par1 );
    hb_retni( i );
  }
}


/*
int columnSpan ( int row, int column ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_COLUMNSPAN )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int i = obj->columnSpan ( par1, par2 );
    hb_retni( i );
  }
}


/*
int columnViewportPosition ( int column ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_COLUMNVIEWPORTPOSITION )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->columnViewportPosition ( par1 );
    hb_retni( i );
  }
}


/*
int columnWidth ( int column ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_COLUMNWIDTH )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->columnWidth ( par1 );
    hb_retni( i );
  }
}


/*
Qt::PenStyle gridStyle () const
*/
HB_FUNC_STATIC( QTABLEVIEW_GRIDSTYLE )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->gridStyle (  );
    hb_retni( i );
  }
}


/*
QHeaderView * horizontalHeader () const
*/
HB_FUNC_STATIC( QTABLEVIEW_HORIZONTALHEADER )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHeaderView * ptr = obj->horizontalHeader (  );
    _qt4xhb_createReturnClass ( ptr, "QHEADERVIEW" );
  }
}


/*
bool isColumnHidden ( int column ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_ISCOLUMNHIDDEN )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isColumnHidden ( par1 ) );
  }
}


/*
bool isCornerButtonEnabled () const
*/
HB_FUNC_STATIC( QTABLEVIEW_ISCORNERBUTTONENABLED )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isCornerButtonEnabled (  ) );
  }
}


/*
bool isRowHidden ( int row ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_ISROWHIDDEN )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    hb_retl( obj->isRowHidden ( par1 ) );
  }
}


/*
bool isSortingEnabled () const
*/
HB_FUNC_STATIC( QTABLEVIEW_ISSORTINGENABLED )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isSortingEnabled (  ) );
  }
}


/*
int rowAt ( int y ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_ROWAT )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->rowAt ( par1 );
    hb_retni( i );
  }
}


/*
int rowHeight ( int row ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_ROWHEIGHT )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->rowHeight ( par1 );
    hb_retni( i );
  }
}


/*
int rowSpan ( int row, int column ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_ROWSPAN )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int i = obj->rowSpan ( par1, par2 );
    hb_retni( i );
  }
}


/*
int rowViewportPosition ( int row ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_ROWVIEWPORTPOSITION )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->rowViewportPosition ( par1 );
    hb_retni( i );
  }
}


/*
void setColumnHidden ( int column, bool hide )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETCOLUMNHIDDEN )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool par2 = hb_parl(2);
    obj->setColumnHidden ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setColumnWidth ( int column, int width )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETCOLUMNWIDTH )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setColumnWidth ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setCornerButtonEnabled ( bool enable )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETCORNERBUTTONENABLED )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setCornerButtonEnabled ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setGridStyle ( Qt::PenStyle style )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETGRIDSTYLE )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setGridStyle (  (Qt::PenStyle) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHorizontalHeader ( QHeaderView * header )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETHORIZONTALHEADER )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHeaderView * par1 = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setHorizontalHeader ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowHeight ( int row, int height )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETROWHEIGHT )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setRowHeight ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRowHidden ( int row, bool hide )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETROWHIDDEN )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool par2 = hb_parl(2);
    obj->setRowHidden ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSortingEnabled ( bool enable )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETSORTINGENABLED )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setSortingEnabled ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSpan ( int row, int column, int rowSpanCount, int columnSpanCount )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETSPAN )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    obj->setSpan ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setVerticalHeader ( QHeaderView * header )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETVERTICALHEADER )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHeaderView * par1 = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setVerticalHeader ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWordWrap ( bool on )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETWORDWRAP )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setWordWrap ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool showGrid () const
*/
HB_FUNC_STATIC( QTABLEVIEW_SHOWGRID )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->showGrid (  ) );
  }
}


/*
void sortByColumn ( int column, Qt::SortOrder order )
*/
HB_FUNC_STATIC( QTABLEVIEW_SORTBYCOLUMN )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->sortByColumn ( par1,  (Qt::SortOrder) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QHeaderView * verticalHeader () const
*/
HB_FUNC_STATIC( QTABLEVIEW_VERTICALHEADER )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHeaderView * ptr = obj->verticalHeader (  );
    _qt4xhb_createReturnClass ( ptr, "QHEADERVIEW" );
  }
}


/*
bool wordWrap () const
*/
HB_FUNC_STATIC( QTABLEVIEW_WORDWRAP )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->wordWrap (  ) );
  }
}


/*
virtual QModelIndex indexAt ( const QPoint & pos ) const
*/
HB_FUNC_STATIC( QTABLEVIEW_INDEXAT )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->indexAt ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}


/*
virtual void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETMODEL )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractItemModel * par1 = (QAbstractItemModel *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setRootIndex ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETROOTINDEX )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setRootIndex ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETSELECTIONMODEL )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QItemSelectionModel * par1 = (QItemSelectionModel *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSelectionModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void hideColumn ( int column )
*/
HB_FUNC_STATIC( QTABLEVIEW_HIDECOLUMN )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->hideColumn ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void hideRow ( int row )
*/
HB_FUNC_STATIC( QTABLEVIEW_HIDEROW )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->hideRow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resizeColumnToContents ( int column )
*/
HB_FUNC_STATIC( QTABLEVIEW_RESIZECOLUMNTOCONTENTS )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->resizeColumnToContents ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resizeColumnsToContents ()
*/
HB_FUNC_STATIC( QTABLEVIEW_RESIZECOLUMNSTOCONTENTS )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resizeColumnsToContents (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resizeRowToContents ( int row )
*/
HB_FUNC_STATIC( QTABLEVIEW_RESIZEROWTOCONTENTS )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->resizeRowToContents ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resizeRowsToContents ()
*/
HB_FUNC_STATIC( QTABLEVIEW_RESIZEROWSTOCONTENTS )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resizeRowsToContents (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void selectColumn ( int column )
*/
HB_FUNC_STATIC( QTABLEVIEW_SELECTCOLUMN )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->selectColumn ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void selectRow ( int row )
*/
HB_FUNC_STATIC( QTABLEVIEW_SELECTROW )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->selectRow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setShowGrid ( bool show )
*/
HB_FUNC_STATIC( QTABLEVIEW_SETSHOWGRID )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setShowGrid ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showColumn ( int column )
*/
HB_FUNC_STATIC( QTABLEVIEW_SHOWCOLUMN )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->showColumn ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void showRow ( int row )
*/
HB_FUNC_STATIC( QTABLEVIEW_SHOWROW )
{
  QTableView * obj = (QTableView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->showRow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

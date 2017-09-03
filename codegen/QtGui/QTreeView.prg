$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QHEADERVIEW
REQUEST QMODELINDEX
REQUEST QRECT
#endif

CLASS QTreeView INHERIT QAbstractItemView

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD allColumnsShowFocus
   METHOD autoExpandDelay
   METHOD columnAt
   METHOD columnViewportPosition
   METHOD columnWidth
   METHOD expandsOnDoubleClick
   METHOD header
   METHOD indentation
   METHOD indexAbove
   METHOD indexBelow
   METHOD isAnimated
   METHOD isColumnHidden
   METHOD isExpanded
   METHOD isFirstColumnSpanned
   METHOD isHeaderHidden
   METHOD isRowHidden
   METHOD isSortingEnabled
   METHOD itemsExpandable
   METHOD rootIsDecorated
   METHOD setAllColumnsShowFocus
   METHOD setAnimated
   METHOD setAutoExpandDelay
   METHOD setColumnHidden
   METHOD setColumnWidth
   METHOD setExpanded
   METHOD setExpandsOnDoubleClick
   METHOD setFirstColumnSpanned
   METHOD setHeader
   METHOD setHeaderHidden
   METHOD setIndentation
   METHOD setItemsExpandable
   METHOD setRootIsDecorated
   METHOD setRowHidden
   METHOD setSortingEnabled
   METHOD setUniformRowHeights
   METHOD setWordWrap
   METHOD sortByColumn
   METHOD uniformRowHeights
   METHOD wordWrap
   METHOD dataChanged
   METHOD indexAt
   METHOD keyboardSearch
   METHOD reset
   METHOD scrollTo
   METHOD selectAll
   METHOD setModel
   METHOD setRootIndex
   METHOD setSelectionModel
   METHOD visualRect
   METHOD collapse
   METHOD collapseAll
   METHOD expand
   METHOD expandAll
   METHOD expandToDepth
   METHOD hideColumn
   METHOD resizeColumnToContents
   METHOD showColumn

   METHOD onCollapsed
   METHOD onExpanded

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTreeView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTreeView>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTreeView ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QTREEVIEW_NEW )
{
  QTreeView * o = new QTreeView ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QTREEVIEW_DELETE )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool allColumnsShowFocus () const
*/
HB_FUNC_STATIC( QTREEVIEW_ALLCOLUMNSSHOWFOCUS )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->allColumnsShowFocus () );
  }
}

/*
int autoExpandDelay () const
*/
HB_FUNC_STATIC( QTREEVIEW_AUTOEXPANDDELAY )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->autoExpandDelay () );
  }
}

/*
int columnAt ( int x ) const
*/
HB_FUNC_STATIC( QTREEVIEW_COLUMNAT )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->columnAt ( PINT(1) ) );
  }
}

/*
int columnViewportPosition ( int column ) const
*/
HB_FUNC_STATIC( QTREEVIEW_COLUMNVIEWPORTPOSITION )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->columnViewportPosition ( PINT(1) ) );
  }
}

/*
int columnWidth ( int column ) const
*/
HB_FUNC_STATIC( QTREEVIEW_COLUMNWIDTH )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->columnWidth ( PINT(1) ) );
  }
}

/*
bool expandsOnDoubleClick () const
*/
HB_FUNC_STATIC( QTREEVIEW_EXPANDSONDOUBLECLICK )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->expandsOnDoubleClick () );
  }
}

/*
QHeaderView * header () const
*/
HB_FUNC_STATIC( QTREEVIEW_HEADER )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHeaderView * ptr = obj->header ();
    _qt4xhb_createReturnClass ( ptr, "QHEADERVIEW" );
  }
}

/*
int indentation () const
*/
HB_FUNC_STATIC( QTREEVIEW_INDENTATION )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->indentation () );
  }
}

/*
QModelIndex indexAbove ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QTREEVIEW_INDEXABOVE )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->indexAbove ( *PQMODELINDEX(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
QModelIndex indexBelow ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QTREEVIEW_INDEXBELOW )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->indexBelow ( *PQMODELINDEX(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
bool isAnimated () const
*/
HB_FUNC_STATIC( QTREEVIEW_ISANIMATED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isAnimated () );
  }
}

/*
bool isColumnHidden ( int column ) const
*/
HB_FUNC_STATIC( QTREEVIEW_ISCOLUMNHIDDEN )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isColumnHidden ( PINT(1) ) );
  }
}

/*
bool isExpanded ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QTREEVIEW_ISEXPANDED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isExpanded ( *PQMODELINDEX(1) ) );
  }
}

/*
bool isFirstColumnSpanned ( int row, const QModelIndex & parent ) const
*/
HB_FUNC_STATIC( QTREEVIEW_ISFIRSTCOLUMNSPANNED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isFirstColumnSpanned ( PINT(1), *PQMODELINDEX(2) ) );
  }
}

/*
bool isHeaderHidden () const
*/
HB_FUNC_STATIC( QTREEVIEW_ISHEADERHIDDEN )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isHeaderHidden () );
  }
}

/*
bool isRowHidden ( int row, const QModelIndex & parent ) const
*/
HB_FUNC_STATIC( QTREEVIEW_ISROWHIDDEN )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isRowHidden ( PINT(1), *PQMODELINDEX(2) ) );
  }
}

/*
bool isSortingEnabled () const
*/
HB_FUNC_STATIC( QTREEVIEW_ISSORTINGENABLED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSortingEnabled () );
  }
}

/*
bool itemsExpandable () const
*/
HB_FUNC_STATIC( QTREEVIEW_ITEMSEXPANDABLE )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->itemsExpandable () );
  }
}

/*
bool rootIsDecorated () const
*/
HB_FUNC_STATIC( QTREEVIEW_ROOTISDECORATED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->rootIsDecorated () );
  }
}

/*
void setAllColumnsShowFocus ( bool enable )
*/
HB_FUNC_STATIC( QTREEVIEW_SETALLCOLUMNSSHOWFOCUS )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAllColumnsShowFocus ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAnimated ( bool enable )
*/
HB_FUNC_STATIC( QTREEVIEW_SETANIMATED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAnimated ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAutoExpandDelay ( int delay )
*/
HB_FUNC_STATIC( QTREEVIEW_SETAUTOEXPANDDELAY )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAutoExpandDelay ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColumnHidden ( int column, bool hide )
*/
HB_FUNC_STATIC( QTREEVIEW_SETCOLUMNHIDDEN )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setColumnHidden ( PINT(1), PBOOL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setColumnWidth ( int column, int width )
*/
HB_FUNC_STATIC( QTREEVIEW_SETCOLUMNWIDTH )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setColumnWidth ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setExpanded ( const QModelIndex & index, bool expanded )
*/
HB_FUNC_STATIC( QTREEVIEW_SETEXPANDED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setExpanded ( *PQMODELINDEX(1), PBOOL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setExpandsOnDoubleClick ( bool enable )
*/
HB_FUNC_STATIC( QTREEVIEW_SETEXPANDSONDOUBLECLICK )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setExpandsOnDoubleClick ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFirstColumnSpanned ( int row, const QModelIndex & parent, bool span )
*/
HB_FUNC_STATIC( QTREEVIEW_SETFIRSTCOLUMNSPANNED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFirstColumnSpanned ( PINT(1), *PQMODELINDEX(2), PBOOL(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHeader ( QHeaderView * header )
*/
HB_FUNC_STATIC( QTREEVIEW_SETHEADER )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QHeaderView * par1 = (QHeaderView *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setHeader ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHeaderHidden ( bool hide )
*/
HB_FUNC_STATIC( QTREEVIEW_SETHEADERHIDDEN )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setHeaderHidden ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setIndentation ( int i )
*/
HB_FUNC_STATIC( QTREEVIEW_SETINDENTATION )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setIndentation ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setItemsExpandable ( bool enable )
*/
HB_FUNC_STATIC( QTREEVIEW_SETITEMSEXPANDABLE )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setItemsExpandable ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRootIsDecorated ( bool show )
*/
HB_FUNC_STATIC( QTREEVIEW_SETROOTISDECORATED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRootIsDecorated ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRowHidden ( int row, const QModelIndex & parent, bool hide )
*/
HB_FUNC_STATIC( QTREEVIEW_SETROWHIDDEN )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRowHidden ( PINT(1), *PQMODELINDEX(2), PBOOL(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSortingEnabled ( bool enable )
*/
HB_FUNC_STATIC( QTREEVIEW_SETSORTINGENABLED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSortingEnabled ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUniformRowHeights ( bool uniform )
*/
HB_FUNC_STATIC( QTREEVIEW_SETUNIFORMROWHEIGHTS )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setUniformRowHeights ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWordWrap ( bool on )
*/
HB_FUNC_STATIC( QTREEVIEW_SETWORDWRAP )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWordWrap ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void sortByColumn ( int column, Qt::SortOrder order )
*/
HB_FUNC_STATIC( QTREEVIEW_SORTBYCOLUMN )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->sortByColumn ( PINT(1), (Qt::SortOrder) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool uniformRowHeights () const
*/
HB_FUNC_STATIC( QTREEVIEW_UNIFORMROWHEIGHTS )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->uniformRowHeights () );
  }
}

/*
bool wordWrap () const
*/
HB_FUNC_STATIC( QTREEVIEW_WORDWRAP )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->wordWrap () );
  }
}

/*
virtual void dataChanged ( const QModelIndex & topLeft, const QModelIndex & bottomRight )
*/
HB_FUNC_STATIC( QTREEVIEW_DATACHANGED )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->dataChanged ( *PQMODELINDEX(1), *PQMODELINDEX(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QModelIndex indexAt ( const QPoint & point ) const
*/
HB_FUNC_STATIC( QTREEVIEW_INDEXAT )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->indexAt ( *PQPOINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
virtual void keyboardSearch ( const QString & search )
*/
HB_FUNC_STATIC( QTREEVIEW_KEYBOARDSEARCH )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->keyboardSearch ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void reset ()
*/
HB_FUNC_STATIC( QTREEVIEW_RESET )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reset ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
*/
HB_FUNC_STATIC( QTREEVIEW_SCROLLTO )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QTreeView::EnsureVisible : hb_parni(2);
    obj->scrollTo ( *PQMODELINDEX(1), (QTreeView::ScrollHint) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void selectAll ()
*/
HB_FUNC_STATIC( QTREEVIEW_SELECTALL )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->selectAll ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setModel ( QAbstractItemModel * model )
*/
HB_FUNC_STATIC( QTREEVIEW_SETMODEL )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QTREEVIEW_SETROOTINDEX )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRootIndex ( *PQMODELINDEX(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual void setSelectionModel ( QItemSelectionModel * selectionModel )
*/
HB_FUNC_STATIC( QTREEVIEW_SETSELECTIONMODEL )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QItemSelectionModel * par1 = (QItemSelectionModel *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSelectionModel ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QRect visualRect ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QTREEVIEW_VISUALRECT )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->visualRect ( *PQMODELINDEX(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
void collapse ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QTREEVIEW_COLLAPSE )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->collapse ( *PQMODELINDEX(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void collapseAll ()
*/
HB_FUNC_STATIC( QTREEVIEW_COLLAPSEALL )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->collapseAll ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void expand ( const QModelIndex & index )
*/
HB_FUNC_STATIC( QTREEVIEW_EXPAND )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->expand ( *PQMODELINDEX(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void expandAll ()
*/
HB_FUNC_STATIC( QTREEVIEW_EXPANDALL )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->expandAll ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void expandToDepth ( int depth )
*/
HB_FUNC_STATIC( QTREEVIEW_EXPANDTODEPTH )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->expandToDepth ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void hideColumn ( int column )
*/
HB_FUNC_STATIC( QTREEVIEW_HIDECOLUMN )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->hideColumn ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resizeColumnToContents ( int column )
*/
HB_FUNC_STATIC( QTREEVIEW_RESIZECOLUMNTOCONTENTS )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resizeColumnToContents ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void showColumn ( int column )
*/
HB_FUNC_STATIC( QTREEVIEW_SHOWCOLUMN )
{
  QTreeView * obj = (QTreeView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->showColumn ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

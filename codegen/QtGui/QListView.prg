$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QMODELINDEX
REQUEST QRECT
#endif

CLASS QListView INHERIT QAbstractItemView

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD batchSize
   METHOD clearPropertyFlags
   METHOD flow
   METHOD gridSize
   METHOD isRowHidden
   METHOD isSelectionRectVisible
   METHOD isWrapping
   METHOD layoutMode
   METHOD modelColumn
   METHOD movement
   METHOD resizeMode
   METHOD setBatchSize
   METHOD setFlow
   METHOD setGridSize
   METHOD setLayoutMode
   METHOD setModelColumn
   METHOD setMovement
   METHOD setResizeMode
   METHOD setRowHidden
   METHOD setSelectionRectVisible
   METHOD setSpacing
   METHOD setUniformItemSizes
   METHOD setViewMode
   METHOD setWordWrap
   METHOD setWrapping
   METHOD spacing
   METHOD uniformItemSizes
   METHOD viewMode
   METHOD wordWrap
   METHOD indexAt
   METHOD scrollTo
   METHOD visualRect

   METHOD onIndexesMoved

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QListView>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QListView ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QLISTVIEW_NEW )
{
  QListView * o = new QListView ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QLISTVIEW_DELETE )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
int batchSize () const
*/
HB_FUNC_STATIC( QLISTVIEW_BATCHSIZE )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->batchSize () );
  }
}

/*
void clearPropertyFlags ()
*/
HB_FUNC_STATIC( QLISTVIEW_CLEARPROPERTYFLAGS )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clearPropertyFlags ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
Flow flow () const
*/
HB_FUNC_STATIC( QLISTVIEW_FLOW )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->flow () );
  }
}

/*
QSize gridSize () const
*/
HB_FUNC_STATIC( QLISTVIEW_GRIDSIZE )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->gridSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
bool isRowHidden ( int row ) const
*/
HB_FUNC_STATIC( QLISTVIEW_ISROWHIDDEN )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isRowHidden ( PINT(1) ) );
  }
}

/*
bool isSelectionRectVisible () const
*/
HB_FUNC_STATIC( QLISTVIEW_ISSELECTIONRECTVISIBLE )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSelectionRectVisible () );
  }
}

/*
bool isWrapping () const
*/
HB_FUNC_STATIC( QLISTVIEW_ISWRAPPING )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isWrapping () );
  }
}

/*
LayoutMode layoutMode () const
*/
HB_FUNC_STATIC( QLISTVIEW_LAYOUTMODE )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->layoutMode () );
  }
}

/*
int modelColumn () const
*/
HB_FUNC_STATIC( QLISTVIEW_MODELCOLUMN )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->modelColumn () );
  }
}

/*
Movement movement () const
*/
HB_FUNC_STATIC( QLISTVIEW_MOVEMENT )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->movement () );
  }
}

/*
ResizeMode resizeMode () const
*/
HB_FUNC_STATIC( QLISTVIEW_RESIZEMODE )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->resizeMode () );
  }
}

/*
void setBatchSize ( int batchSize )
*/
HB_FUNC_STATIC( QLISTVIEW_SETBATCHSIZE )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBatchSize ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFlow ( Flow flow )
*/
HB_FUNC_STATIC( QLISTVIEW_SETFLOW )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setFlow ( (QListView::Flow) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGridSize ( const QSize & size )
*/
HB_FUNC_STATIC( QLISTVIEW_SETGRIDSIZE )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setGridSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLayoutMode ( LayoutMode mode )
*/
HB_FUNC_STATIC( QLISTVIEW_SETLAYOUTMODE )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setLayoutMode ( (QListView::LayoutMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setModelColumn ( int column )
*/
HB_FUNC_STATIC( QLISTVIEW_SETMODELCOLUMN )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setModelColumn ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMovement ( Movement movement )
*/
HB_FUNC_STATIC( QLISTVIEW_SETMOVEMENT )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setMovement ( (QListView::Movement) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setResizeMode ( ResizeMode mode )
*/
HB_FUNC_STATIC( QLISTVIEW_SETRESIZEMODE )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setResizeMode ( (QListView::ResizeMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRowHidden ( int row, bool hide )
*/
HB_FUNC_STATIC( QLISTVIEW_SETROWHIDDEN )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRowHidden ( (int) hb_parni(1), PBOOL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSelectionRectVisible ( bool show )
*/
HB_FUNC_STATIC( QLISTVIEW_SETSELECTIONRECTVISIBLE )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSelectionRectVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSpacing ( int space )
*/
HB_FUNC_STATIC( QLISTVIEW_SETSPACING )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSpacing ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setUniformItemSizes ( bool enable )
*/
HB_FUNC_STATIC( QLISTVIEW_SETUNIFORMITEMSIZES )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setUniformItemSizes ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewMode ( ViewMode mode )
*/
HB_FUNC_STATIC( QLISTVIEW_SETVIEWMODE )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setViewMode ( (QListView::ViewMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWordWrap ( bool on )
*/
HB_FUNC_STATIC( QLISTVIEW_SETWORDWRAP )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWordWrap ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setWrapping ( bool enable )
*/
HB_FUNC_STATIC( QLISTVIEW_SETWRAPPING )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setWrapping ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int spacing () const
*/
HB_FUNC_STATIC( QLISTVIEW_SPACING )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->spacing () );
  }
}

/*
bool uniformItemSizes () const
*/
HB_FUNC_STATIC( QLISTVIEW_UNIFORMITEMSIZES )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->uniformItemSizes () );
  }
}

/*
ViewMode viewMode () const
*/
HB_FUNC_STATIC( QLISTVIEW_VIEWMODE )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->viewMode () );
  }
}

/*
bool wordWrap () const
*/
HB_FUNC_STATIC( QLISTVIEW_WORDWRAP )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->wordWrap () );
  }
}

/*
virtual QModelIndex indexAt ( const QPoint & p ) const
*/
HB_FUNC_STATIC( QLISTVIEW_INDEXAT )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QModelIndex * ptr = new QModelIndex( obj->indexAt ( *PQPOINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QMODELINDEX", true );
  }
}

/*
virtual void scrollTo ( const QModelIndex & index, ScrollHint hint = EnsureVisible )
*/
HB_FUNC_STATIC( QLISTVIEW_SCROLLTO )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = ISNIL(2)? (int) QListView::EnsureVisible : hb_parni(2);
    obj->scrollTo ( *PQMODELINDEX(1), (QListView::ScrollHint) par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QRect visualRect ( const QModelIndex & index ) const
*/
HB_FUNC_STATIC( QLISTVIEW_VISUALRECT )
{
  QListView * obj = (QListView *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->visualRect ( *PQMODELINDEX(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

#pragma ENDDUMP

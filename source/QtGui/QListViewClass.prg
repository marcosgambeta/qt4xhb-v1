/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QSIZE
REQUEST QMODELINDEX
REQUEST QRECT

CLASS QListView INHERIT QAbstractItemView

   DATA class_id INIT Class_Id_QListView
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QListView
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QListView>

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
QListView ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QLISTVIEW_NEW )
{
  QListView * o = NULL;
  QWidget * par1 = ISNIL(1)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QListView ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QListView *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    hb_retni( obj->batchSize (  ) );
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
    obj->clearPropertyFlags (  );
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
    hb_retni( (int) obj->flow (  ) );
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
    QSize * ptr = new QSize( obj->gridSize (  ) );
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
    int par1 = hb_parni(1);
    hb_retl( obj->isRowHidden ( par1 ) );
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
    hb_retl( obj->isSelectionRectVisible (  ) );
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
    hb_retl( obj->isWrapping (  ) );
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
    hb_retni( (int) obj->layoutMode (  ) );
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
    hb_retni( obj->modelColumn (  ) );
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
    hb_retni( (int) obj->movement (  ) );
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
    hb_retni( (int) obj->resizeMode (  ) );
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
    int par1 = hb_parni(1);
    obj->setBatchSize ( par1 );
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
    obj->setFlow (  (QListView::Flow) par1 );
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
    QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setGridSize ( *par1 );
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
    obj->setLayoutMode (  (QListView::LayoutMode) par1 );
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
    int par1 = hb_parni(1);
    obj->setModelColumn ( par1 );
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
    obj->setMovement (  (QListView::Movement) par1 );
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
    obj->setResizeMode (  (QListView::ResizeMode) par1 );
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
    int par1 = hb_parni(1);
    bool par2 = hb_parl(2);
    obj->setRowHidden ( par1, par2 );
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
    bool par1 = hb_parl(1);
    obj->setSelectionRectVisible ( par1 );
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
    int par1 = hb_parni(1);
    obj->setSpacing ( par1 );
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
    bool par1 = hb_parl(1);
    obj->setUniformItemSizes ( par1 );
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
    obj->setViewMode (  (QListView::ViewMode) par1 );
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
    bool par1 = hb_parl(1);
    obj->setWordWrap ( par1 );
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
    bool par1 = hb_parl(1);
    obj->setWrapping ( par1 );
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
    hb_retni( obj->spacing (  ) );
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
    hb_retl( obj->uniformItemSizes (  ) );
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
    hb_retni( (int) obj->viewMode (  ) );
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
    hb_retl( obj->wordWrap (  ) );
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
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QModelIndex * ptr = new QModelIndex( obj->indexAt ( *par1 ) );
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
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) QListView::EnsureVisible : hb_parni(2);
    obj->scrollTo ( *par1,  (QListView::ScrollHint) par2 );
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
    QModelIndex * par1 = (QModelIndex *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->visualRect ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}





#pragma ENDDUMP

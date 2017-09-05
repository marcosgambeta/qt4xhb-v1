$header

#include "hbclass.ch"

CLASS QPrintPreviewWidget INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD currentPage
   METHOD orientation
   METHOD pageCount
   METHOD viewMode
   METHOD zoomFactor
   METHOD zoomMode
   METHOD setVisible
   METHOD fitInView
   METHOD fitToWidth
   METHOD print
   METHOD setAllPagesViewMode
   METHOD setCurrentPage
   METHOD setFacingPagesViewMode
   METHOD setLandscapeOrientation
   METHOD setOrientation
   METHOD setPortraitOrientation
   METHOD setSinglePageViewMode
   METHOD setViewMode
   METHOD setZoomFactor
   METHOD setZoomMode
   METHOD updatePreview
   METHOD zoomIn
   METHOD zoomOut

   METHOD onPaintRequested
   METHOD onPreviewChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPrintPreviewWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPrintPreviewWidget ( QPrinter * printer, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_NEW1 )
{
  int par3 = ISNIL(3)? (int) 0 : hb_parni(3);
  QPrintPreviewWidget * o = new QPrintPreviewWidget ( PQPRINTER(1), OPQWIDGET(2,0), (Qt::WindowFlags) par3 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QPrintPreviewWidget ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_NEW2 )
{
  int par2 = ISNIL(2)? (int) 0 : hb_parni(2);
  QPrintPreviewWidget * o = new QPrintPreviewWidget ( OPQWIDGET(1,0), (Qt::WindowFlags) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QPrintPreviewWidget ( QPrinter * printer, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
//[2]QPrintPreviewWidget ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )

HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_NEW )
{
  if( ISBETWEEN(1,3) && ISQPRINTER(1) && (ISQWIDGET(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QPRINTPREVIEWWIDGET_NEW1 );
  }
  else if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPRINTPREVIEWWIDGET_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int currentPage () const
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_CURRENTPAGE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->currentPage () );
  }
}

/*
QPrinter::Orientation orientation () const
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_ORIENTATION )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->orientation () );
  }
}

/*
int pageCount () const
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_PAGECOUNT )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( (int) obj->pageCount () );
  }
}

/*
ViewMode viewMode () const
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_VIEWMODE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->viewMode () );
  }
}

/*
qreal zoomFactor () const
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_ZOOMFACTOR )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->zoomFactor () );
  }
}

/*
ZoomMode zoomMode () const
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_ZOOMMODE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->zoomMode () );
  }
}

/*
virtual void setVisible ( bool visible )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETVISIBLE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVisible ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fitInView ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_FITINVIEW )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->fitInView ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fitToWidth ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_FITTOWIDTH )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->fitToWidth ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void print ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_PRINT )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->print ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAllPagesViewMode ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETALLPAGESVIEWMODE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAllPagesViewMode ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentPage ( int page )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETCURRENTPAGE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCurrentPage ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFacingPagesViewMode ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETFACINGPAGESVIEWMODE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFacingPagesViewMode ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLandscapeOrientation ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETLANDSCAPEORIENTATION )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLandscapeOrientation ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOrientation ( QPrinter::Orientation orientation )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETORIENTATION )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setOrientation ( (QPrinter::Orientation) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPortraitOrientation ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETPORTRAITORIENTATION )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPortraitOrientation ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSinglePageViewMode ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETSINGLEPAGEVIEWMODE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSinglePageViewMode ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewMode ( ViewMode mode )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETVIEWMODE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setViewMode ( (QPrintPreviewWidget::ViewMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setZoomFactor ( qreal factor )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETZOOMFACTOR )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setZoomFactor ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setZoomMode ( ZoomMode zoomMode )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETZOOMMODE )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setZoomMode ( (QPrintPreviewWidget::ZoomMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void updatePreview ()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_UPDATEPREVIEW )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->updatePreview ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void zoomIn ( qreal factor = 1.1 )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_ZOOMIN )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->zoomIn ( (qreal) ISNIL(1)? 1.1 : hb_parnd(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void zoomOut ( qreal factor = 1.1 )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_ZOOMOUT )
{
  QPrintPreviewWidget * obj = (QPrintPreviewWidget *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->zoomOut ( (qreal) ISNIL(1)? 1.1 : hb_parnd(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

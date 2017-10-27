$header

#include "hbclass.ch"

CLASS QPrintPreviewWidget INHERIT QWidget

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
$method=|int|currentPage|

/*
QPrinter::Orientation orientation () const
*/
$method=|QPrinter::Orientation|orientation|

/*
int pageCount () const
*/
$method=|int|pageCount|

/*
ViewMode viewMode () const
*/
$method=|QPrintPreviewWidget::ViewMode|viewMode|

/*
qreal zoomFactor () const
*/
$method=|qreal|zoomFactor|

/*
ZoomMode zoomMode () const
*/
$method=|QPrintPreviewWidget::ZoomMode|zoomMode|

/*
virtual void setVisible ( bool visible )
*/
$virtualMethod=|void|setVisible|bool

/*
void fitInView ()
*/
$method=|void|fitInView|

/*
void fitToWidth ()
*/
$method=|void|fitToWidth|

/*
void print ()
*/
$method=|void|print|

/*
void setAllPagesViewMode ()
*/
$method=|void|setAllPagesViewMode|

/*
void setCurrentPage ( int page )
*/
$method=|void|setCurrentPage|int

/*
void setFacingPagesViewMode ()
*/
$method=|void|setFacingPagesViewMode|

/*
void setLandscapeOrientation ()
*/
$method=|void|setLandscapeOrientation|

/*
void setOrientation ( QPrinter::Orientation orientation )
*/
$method=|void|setOrientation|QPrinter::Orientation

/*
void setPortraitOrientation ()
*/
$method=|void|setPortraitOrientation|

/*
void setSinglePageViewMode ()
*/
$method=|void|setSinglePageViewMode|

/*
void setViewMode ( ViewMode mode )
*/
$method=|void|setViewMode|QPrintPreviewWidget::ViewMode

/*
void setZoomFactor ( qreal factor )
*/
$method=|void|setZoomFactor|qreal

/*
void setZoomMode ( ZoomMode zoomMode )
*/
$method=|void|setZoomMode|QPrintPreviewWidget::ZoomMode

/*
void updatePreview ()
*/
$method=|void|updatePreview|

/*
void zoomIn ( qreal factor = 1.1 )
*/
$method=|void|zoomIn|qreal=1.1

/*
void zoomOut ( qreal factor = 1.1 )
*/
$method=|void|zoomOut|qreal=1.1

#pragma ENDDUMP

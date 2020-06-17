%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPrintPreviewWidget ( QPrinter * printer, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$internalConstructor=|new1|QPrinter *,QWidget *=0,Qt::WindowFlags=0

$prototype=QPrintPreviewWidget ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$internalConstructor=|new2|QWidget *=0,Qt::WindowFlags=0

/*
[1]QPrintPreviewWidget ( QPrinter * printer, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
[2]QPrintPreviewWidget ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/

HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_NEW )
{
  if( ISBETWEEN(1,3) && ISQPRINTER(1) && (ISQWIDGET(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QPrintPreviewWidget_new1();
  }
  else if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    QPrintPreviewWidget_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=int currentPage() const

$prototypeV2=QPrinter::Orientation orientation() const

$prototypeV2=int pageCount() const

$prototypeV2=QPrintPreviewWidget::ViewMode viewMode() const

$prototypeV2=qreal zoomFactor() const

$prototypeV2=QPrintPreviewWidget::ZoomMode zoomMode() const

$prototype=virtual void setVisible ( bool visible )
$virtualMethod=|void|setVisible|bool

$prototypeV2=void fitInView()

$prototypeV2=void fitToWidth()

$prototypeV2=void print()

$prototypeV2=void setAllPagesViewMode()

$prototype=void setCurrentPage ( int page )
$method=|void|setCurrentPage|int

$prototypeV2=void setFacingPagesViewMode()

$prototypeV2=void setLandscapeOrientation()

$prototype=void setOrientation ( QPrinter::Orientation orientation )
$method=|void|setOrientation|QPrinter::Orientation

$prototypeV2=void setPortraitOrientation()

$prototypeV2=void setSinglePageViewMode()

$prototype=void setViewMode ( ViewMode mode )
$method=|void|setViewMode|QPrintPreviewWidget::ViewMode

$prototype=void setZoomFactor ( qreal factor )
$method=|void|setZoomFactor|qreal

$prototype=void setZoomMode ( ZoomMode zoomMode )
$method=|void|setZoomMode|QPrintPreviewWidget::ZoomMode

$prototypeV2=void updatePreview()

$prototype=void zoomIn ( qreal factor = 1.1 )
$method=|void|zoomIn|qreal=1.1

$prototype=void zoomOut ( qreal factor = 1.1 )
$method=|void|zoomOut|qreal=1.1

$beginSignals
$signal=|paintRequested(QPrinter*)
$signal=|previewChanged()
$endSignals

#pragma ENDDUMP

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

$prototypeV2=virtual void setVisible( bool visible )

$prototypeV2=void fitInView()

$prototypeV2=void fitToWidth()

$prototypeV2=void print()

$prototypeV2=void setAllPagesViewMode()

$prototypeV2=void setCurrentPage( int page )

$prototypeV2=void setFacingPagesViewMode()

$prototypeV2=void setLandscapeOrientation()

$prototypeV2=void setOrientation( QPrinter::Orientation orientation )

$prototypeV2=void setPortraitOrientation()

$prototypeV2=void setSinglePageViewMode()

$prototypeV2=void setViewMode( QPrintPreviewWidget::ViewMode mode )

$prototypeV2=void setZoomFactor( qreal factor )

$prototypeV2=void setZoomMode( QPrintPreviewWidget::ZoomMode zoomMode )

$prototypeV2=void updatePreview()

$prototypeV2=void zoomIn( qreal factor = 1.1 )

$prototypeV2=void zoomOut( qreal factor = 1.1 )

$beginSignals
$signal=|paintRequested(QPrinter*)
$signal=|previewChanged()
$endSignals

#pragma ENDDUMP

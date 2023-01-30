/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QPrintPreviewWidget INHERIT QWidget

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

PROCEDURE destroyObject() CLASS QPrintPreviewWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QPrintPreviewWidget>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_NEW )
{
  if( ISBETWEEN( 1, 3 ) && ISQPRINTER( 1 ) && ( ISQWIDGET( 2 ) || HB_ISNIL( 2 ) ) && ( HB_ISNUM( 3 ) || HB_ISNIL( 3 ) ) )
  {
    /*
    QPrintPreviewWidget( QPrinter * printer, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
    */
    QPrintPreviewWidget * obj = new QPrintPreviewWidget( PQPRINTER( 1 ), OPQWIDGET( 2, 0 ), HB_ISNIL( 3 ) ? ( Qt::WindowFlags ) 0 : ( Qt::WindowFlags ) hb_parni( 3 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else if( ISBETWEEN( 0, 2 ) && ( ISQWIDGET( 1 ) || HB_ISNIL( 1 ) ) && ( HB_ISNUM( 2 ) || HB_ISNIL( 2 ) ) )
  {
    /*
    QPrintPreviewWidget( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
    */
    QPrintPreviewWidget * obj = new QPrintPreviewWidget( OPQWIDGET( 1, 0 ), HB_ISNIL( 2 ) ? ( Qt::WindowFlags ) 0 : ( Qt::WindowFlags ) hb_parni( 2 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_DELETE )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    Qt4xHb::Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
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
int currentPage() const
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_CURRENTPAGE )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->currentPage() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPrinter::Orientation orientation() const
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_ORIENTATION )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->orientation() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int pageCount() const
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_PAGECOUNT )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->pageCount() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPrintPreviewWidget::ViewMode viewMode() const
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_VIEWMODE )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->viewMode() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
qreal zoomFactor() const
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_ZOOMFACTOR )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQREAL( obj->zoomFactor() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPrintPreviewWidget::ZoomMode zoomMode() const
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_ZOOMMODE )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RENUM( obj->zoomMode() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void setVisible( bool visible )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETVISIBLE )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISLOG( 1 ) )
    {
#endif
      obj->setVisible( PBOOL( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fitInView()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_FITINVIEW )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->fitInView();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void fitToWidth()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_FITTOWIDTH )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->fitToWidth();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void print()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_PRINT )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->print();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAllPagesViewMode()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETALLPAGESVIEWMODE )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->setAllPagesViewMode();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCurrentPage( int page )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETCURRENTPAGE )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setCurrentPage( PINT( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFacingPagesViewMode()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETFACINGPAGESVIEWMODE )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->setFacingPagesViewMode();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLandscapeOrientation()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETLANDSCAPEORIENTATION )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->setLandscapeOrientation();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setOrientation( QPrinter::Orientation orientation )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETORIENTATION )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setOrientation( ( QPrinter::Orientation ) hb_parni( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPortraitOrientation()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETPORTRAITORIENTATION )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->setPortraitOrientation();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSinglePageViewMode()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETSINGLEPAGEVIEWMODE )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->setSinglePageViewMode();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewMode( QPrintPreviewWidget::ViewMode mode )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETVIEWMODE )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setViewMode( ( QPrintPreviewWidget::ViewMode ) hb_parni( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setZoomFactor( qreal factor )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETZOOMFACTOR )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setZoomFactor( PQREAL( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setZoomMode( QPrintPreviewWidget::ZoomMode zoomMode )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_SETZOOMMODE )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->setZoomMode( ( QPrintPreviewWidget::ZoomMode ) hb_parni( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void updatePreview()
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_UPDATEPREVIEW )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->updatePreview();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void zoomIn( qreal factor = 1.1 )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_ZOOMIN )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 0, 1 ) && ( HB_ISNUM( 1 ) || HB_ISNIL( 1 ) ) )
    {
#endif
      obj->zoomIn( OPQREAL( 1, 1.1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void zoomOut( qreal factor = 1.1 )
*/
HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_ZOOMOUT )
{
  QPrintPreviewWidget * obj = qobject_cast< QPrintPreviewWidget * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 0, 1 ) && ( HB_ISNUM( 1 ) || HB_ISNIL( 1 ) ) )
    {
#endif
      obj->zoomOut( OPQREAL( 1, 1.1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

void QPrintPreviewWidgetSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_ONPAINTREQUESTED )
{
  QPrintPreviewWidgetSlots_connect_signal( "paintRequested(QPrinter*)", "paintRequested(QPrinter*)" );
}

HB_FUNC_STATIC( QPRINTPREVIEWWIDGET_ONPREVIEWCHANGED )
{
  QPrintPreviewWidgetSlots_connect_signal( "previewChanged()", "previewChanged()" );
}

#pragma ENDDUMP

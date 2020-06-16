%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtDeclarative

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsView

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtDeclarative/QDeclarativeError>
#include <QtDeclarative/QDeclarativeEngine>
#include <QtDeclarative/QDeclarativeContext>
#include <QtGui/QGraphicsObject>

$prototype=QDeclarativeView ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QDeclarativeView ( const QUrl & source, QWidget * parent = 0 )
$internalConstructor=|new2|const QUrl &,QWidget *=0

/*
[1]QDeclarativeView ( QWidget * parent = 0 )
[2]QDeclarativeView ( const QUrl & source, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QDECLARATIVEVIEW_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QDeclarativeView_new1();
  }
  else if( ISBETWEEN(1,2) && ISQURL(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QDeclarativeView_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QDeclarativeEngine * engine() const

$prototype=QList<QDeclarativeError> errors () const
$method=|QList<QDeclarativeError>|errors|

$prototypeV2=QSize initialSize() const

$prototypeV2=QDeclarativeView::ResizeMode resizeMode() const

$prototypeV2=QDeclarativeContext * rootContext() const

$prototypeV2=QGraphicsObject * rootObject() const

$prototype=void setResizeMode ( ResizeMode )
$method=|void|setResizeMode|QDeclarativeView::ResizeMode

$prototype=void setSource ( const QUrl & url )
$method=|void|setSource|const QUrl &

$prototypeV2=QUrl source() const

$prototypeV2=QDeclarativeView::Status status() const

$beginSignals
$signal=|sceneResized(QSize)
$signal=|statusChanged(QDeclarativeView::Status)
$endSignals

#pragma ENDDUMP

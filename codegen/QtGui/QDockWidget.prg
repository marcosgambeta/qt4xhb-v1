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

#include <QtGui/QAction>

$prototype=QDockWidget ( const QString & title, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$internalConstructor=|new1|const QString &,QWidget *=0,Qt::WindowFlags=0

$prototype=QDockWidget ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$internalConstructor=|new2|QWidget *=0,Qt::WindowFlags=0

/*
[1]QDockWidget ( const QString & title, QWidget * parent = 0, Qt::WindowFlags flags = 0 )
[2]QDockWidget ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
*/

HB_FUNC_STATIC( QDOCKWIDGET_NEW )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISQWIDGET(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    QDockWidget_new1();
  }
  else if( ISBETWEEN(0,2) && (ISQWIDGET(1)||ISNIL(1)) && (ISNUM(2)||ISNIL(2)) )
  {
    QDockWidget_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=Qt::DockWidgetAreas allowedAreas() const

$prototypeV2=QDockWidget::DockWidgetFeatures features() const

$prototypeV2=bool isAreaAllowed( Qt::DockWidgetArea area ) const

$prototypeV2=bool isFloating() const

$prototypeV2=void setAllowedAreas( Qt::DockWidgetAreas areas )

$prototypeV2=void setFeatures( QDockWidget::DockWidgetFeatures features )

$prototypeV2=void setFloating( bool floating )

$prototypeV2=void setTitleBarWidget( QWidget * widget )

$prototypeV2=void setWidget( QWidget * widget )

$prototypeV2=QWidget * titleBarWidget() const

$prototypeV2=QAction * toggleViewAction() const

$prototypeV2=QWidget * widget() const

$beginSignals
$signal=|allowedAreasChanged(Qt::DockWidgetAreas)
$signal=|dockLocationChanged(Qt::DockWidgetArea)
$signal=|featuresChanged(QDockWidget::DockWidgetFeatures)
$signal=|topLevelChanged(bool)
$signal=|visibilityChanged(bool)
$endSignals

#pragma ENDDUMP

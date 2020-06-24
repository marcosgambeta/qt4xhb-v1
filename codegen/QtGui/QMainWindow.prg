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

#include <QtGui/QToolBar>
#include <QtGui/QMenu>
#include <QtGui/QMenuBar>
#include <QtGui/QStatusBar>

$prototype=QMainWindow ( QWidget * parent = 0, Qt::WindowFlags flags = 0 )
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

$prototype=void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget )
$internalMethod=|void|addDockWidget,addDockWidget1|Qt::DockWidgetArea,QDockWidget *

$prototype=void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget, Qt::Orientation orientation )
$internalMethod=|void|addDockWidget,addDockWidget2|Qt::DockWidgetArea,QDockWidget *,Qt::Orientation

/*
[1]void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget )
[2]void addDockWidget ( Qt::DockWidgetArea area, QDockWidget * dockwidget, Qt::Orientation orientation )
*/

HB_FUNC_STATIC( QMAINWINDOW_ADDDOCKWIDGET )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQDOCKWIDGET(2) )
  {
    QMainWindow_addDockWidget1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQDOCKWIDGET(2) && ISNUM(3) )
  {
    QMainWindow_addDockWidget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addDockWidget

$prototype=void addToolBar ( Qt::ToolBarArea area, QToolBar * toolbar )
$internalMethod=|void|addToolBar,addToolBar1|Qt::ToolBarArea,QToolBar *

$prototype=void addToolBar ( QToolBar * toolbar )
$internalMethod=|void|addToolBar,addToolBar2|QToolBar *

$prototype=QToolBar * addToolBar ( const QString & title )
$internalMethod=|QToolBar *|addToolBar,addToolBar3|const QString &

/*
[1]void addToolBar ( Qt::ToolBarArea area, QToolBar * toolbar )
[2]void addToolBar ( QToolBar * toolbar )
[3]QToolBar * addToolBar ( const QString & title )
*/

HB_FUNC_STATIC( QMAINWINDOW_ADDTOOLBAR )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISQTOOLBAR(2) )
  {
    QMainWindow_addToolBar1();
  }
  else if( ISNUMPAR(1) && ISQTOOLBAR(1) )
  {
    QMainWindow_addToolBar2();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMainWindow_addToolBar3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addToolBar

$prototypeV2=void addToolBarBreak( Qt::ToolBarArea area = Qt::TopToolBarArea )

$prototypeV2=QWidget * centralWidget() const

$prototypeV2=Qt::DockWidgetArea corner( Qt::Corner corner ) const

$prototypeV2=virtual QMenu * createPopupMenu()

$prototypeV2=QMainWindow::DockOptions dockOptions() const

$prototypeV2=Qt::DockWidgetArea dockWidgetArea( QDockWidget * dockwidget ) const

$prototypeV2=bool documentMode() const

$prototypeV2=QSize iconSize() const

$prototypeV2=void insertToolBar( QToolBar * before, QToolBar * toolbar )

$prototypeV2=void insertToolBarBreak( QToolBar * before )

$prototypeV2=bool isAnimated() const

$prototypeV2=bool isDockNestingEnabled() const

$prototypeV2=QMenuBar * menuBar() const

$prototypeV2=QWidget * menuWidget() const

$prototypeV2=void removeDockWidget( QDockWidget * dockwidget )

$prototypeV2=void removeToolBar( QToolBar * toolbar )

$prototypeV2=void removeToolBarBreak( QToolBar * before )

$prototypeV2=bool restoreDockWidget( QDockWidget * dockwidget )

$prototypeV2=bool restoreState( const QByteArray & state, int version = 0 )

$prototypeV2=QByteArray saveState( int version = 0 ) const

$prototypeV2=void setCentralWidget( QWidget * widget )

$prototypeV2=void setCorner( Qt::Corner corner, Qt::DockWidgetArea area )

$prototypeV2=void setDockOptions( QMainWindow::DockOptions options )

$prototypeV2=void setDocumentMode( bool enabled )

$prototypeV2=void setIconSize( const QSize & iconSize )

$prototypeV2=void setMenuBar( QMenuBar * menuBar )

$prototypeV2=void setMenuWidget( QWidget * menuBar )

$prototypeV2=void setStatusBar( QStatusBar * statusbar )

$prototypeV2=void setTabPosition( Qt::DockWidgetAreas areas, QTabWidget::TabPosition tabPosition )

$prototypeV2=void setTabShape( QTabWidget::TabShape tabShape )

$prototypeV2=void setToolButtonStyle( Qt::ToolButtonStyle toolButtonStyle )

$prototypeV2=void splitDockWidget( QDockWidget * first, QDockWidget * second, Qt::Orientation orientation )

$prototypeV2=QStatusBar * statusBar() const

$prototypeV2=QTabWidget::TabPosition tabPosition( Qt::DockWidgetArea area ) const

$prototypeV2=QTabWidget::TabShape tabShape() const

$prototypeV2=QList<QDockWidget *> tabifiedDockWidgets( QDockWidget * dockwidget ) const

$prototypeV2=void tabifyDockWidget( QDockWidget * first, QDockWidget * second )

$prototypeV2=Qt::ToolBarArea toolBarArea( QToolBar * toolbar ) const

$prototypeV2=bool toolBarBreak( QToolBar * toolbar ) const

$prototypeV2=Qt::ToolButtonStyle toolButtonStyle() const

$prototypeV2=void setAnimated( bool enabled )

$prototypeV2=void setDockNestingEnabled( bool enabled ) const

$beginSignals
$signal=|iconSizeChanged(QSize)
$signal=|toolButtonStyleChanged(Qt::ToolButtonStyle)
$endSignals

#pragma ENDDUMP

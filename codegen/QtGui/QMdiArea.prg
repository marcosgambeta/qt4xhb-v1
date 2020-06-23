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

$beginClassFrom=QAbstractScrollArea

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QMdiSubWindow>

$prototype=QMdiArea ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototypeV2=QMdiArea::WindowOrder activationOrder() const

$prototypeV2=QMdiSubWindow * activeSubWindow() const

$prototype=QMdiSubWindow * addSubWindow ( QWidget * widget, Qt::WindowFlags windowFlags = 0 )
$method=|QMdiSubWindow *|addSubWindow|QWidget *,Qt::WindowFlags=0

$prototypeV2=QBrush background() const

$prototypeV2=QMdiSubWindow * currentSubWindow() const

$prototypeV2=bool documentMode() const

$prototypeV2=void removeSubWindow( QWidget * widget )

$prototypeV2=void setActivationOrder( QMdiArea::WindowOrder order )

$prototypeV2=void setBackground( const QBrush & background )

$prototypeV2=void setDocumentMode( bool enabled )

$prototype=void setOption ( AreaOption option, bool on = true )
$method=|void|setOption|QMdiArea::AreaOption,bool=true

$prototypeV2=void setTabPosition( QTabWidget::TabPosition position )

$prototypeV2=void setTabShape( QTabWidget::TabShape shape )

$prototypeV2=void setViewMode( QMdiArea::ViewMode mode )

$prototype=QList<QMdiSubWindow *> subWindowList ( WindowOrder order = CreationOrder ) const
$method=|QList<QMdiSubWindow *>|subWindowList|QMdiArea::WindowOrder=QMdiArea::CreationOrder

$prototypeV2=QTabWidget::TabPosition tabPosition() const

$prototypeV2=QTabWidget::TabShape tabShape() const

$prototypeV2=bool testOption( QMdiArea::AreaOption option ) const

$prototypeV2=QMdiArea::ViewMode viewMode() const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void activateNextSubWindow()

$prototypeV2=void activatePreviousSubWindow()

$prototypeV2=void cascadeSubWindows()

$prototypeV2=void closeActiveSubWindow()

$prototypeV2=void closeAllSubWindows()

$prototypeV2=void setActiveSubWindow( QMdiSubWindow * window )

$prototypeV2=void tileSubWindows()

$beginSignals
$signal=|subWindowActivated(QMdiSubWindow*)
$endSignals

#pragma ENDDUMP

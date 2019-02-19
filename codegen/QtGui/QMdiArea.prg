%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=WindowOrder activationOrder () const
$method=|QMdiArea::WindowOrder|activationOrder|

$prototype=QMdiSubWindow * activeSubWindow () const
$method=|QMdiSubWindow *|activeSubWindow|

$prototype=QMdiSubWindow * addSubWindow ( QWidget * widget, Qt::WindowFlags windowFlags = 0 )
$method=|QMdiSubWindow *|addSubWindow|QWidget *,Qt::WindowFlags=0

$prototype=QBrush background () const
$method=|QBrush|background|

$prototype=QMdiSubWindow * currentSubWindow () const
$method=|QMdiSubWindow *|currentSubWindow|

$prototype=bool documentMode () const
$method=|bool|documentMode|

$prototype=void removeSubWindow ( QWidget * widget )
$method=|void|removeSubWindow|QWidget *

$prototype=void setActivationOrder ( WindowOrder order )
$method=|void|setActivationOrder|QMdiArea::WindowOrder

$prototype=void setBackground ( const QBrush & background )
$method=|void|setBackground|const QBrush &

$prototype=void setDocumentMode ( bool enabled )
$method=|void|setDocumentMode|bool

$prototype=void setOption ( AreaOption option, bool on = true )
$method=|void|setOption|QMdiArea::AreaOption,bool=true

$prototype=void setTabPosition ( QTabWidget::TabPosition position )
$method=|void|setTabPosition|QTabWidget::TabPosition

$prototype=void setTabShape ( QTabWidget::TabShape shape )
$method=|void|setTabShape|QTabWidget::TabShape

$prototype=void setViewMode ( ViewMode mode )
$method=|void|setViewMode|QMdiArea::ViewMode

$prototype=QList<QMdiSubWindow *> subWindowList ( WindowOrder order = CreationOrder ) const
$method=|QList<QMdiSubWindow *>|subWindowList|QMdiArea::WindowOrder=QMdiArea::CreationOrder

$prototype=QTabWidget::TabPosition tabPosition () const
$method=|QTabWidget::TabPosition|tabPosition|

$prototype=QTabWidget::TabShape tabShape () const
$method=|QTabWidget::TabShape|tabShape|

$prototype=bool testOption ( AreaOption option ) const
$method=|bool|testOption|QMdiArea::AreaOption

$prototype=ViewMode viewMode () const
$method=|QMdiArea::ViewMode|viewMode|

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void activateNextSubWindow ()
$method=|void|activateNextSubWindow|

$prototype=void activatePreviousSubWindow ()
$method=|void|activatePreviousSubWindow|

$prototype=void cascadeSubWindows ()
$method=|void|cascadeSubWindows|

$prototype=void closeActiveSubWindow ()
$method=|void|closeActiveSubWindow|

$prototype=void closeAllSubWindows ()
$method=|void|closeAllSubWindows|

$prototype=void setActiveSubWindow ( QMdiSubWindow * window )
$method=|void|setActiveSubWindow|QMdiSubWindow *

$prototype=void tileSubWindows ()
$method=|void|tileSubWindows|

$beginSignals
$signal=|subWindowActivated(QMdiSubWindow*)
$endSignals

#pragma ENDDUMP

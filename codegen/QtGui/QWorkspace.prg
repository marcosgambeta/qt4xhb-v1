%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

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

$prototype=QWorkspace ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=QWidget * activeWindow () const
$method=|QWidget *|activeWindow|

$prototype=QWidget * addWindow ( QWidget * w, Qt::WindowFlags flags = 0 )
$method=|QWidget *|addWindow|QWidget *,Qt::WindowFlags=0

$prototype=QBrush background () const
$method=|QBrush|background|

$prototype=bool scrollBarsEnabled () const
$method=|bool|scrollBarsEnabled|

$prototype=void setBackground ( const QBrush & background )
$method=|void|setBackground|const QBrush &

$prototype=void setScrollBarsEnabled ( bool enable )
$method=|void|setScrollBarsEnabled|bool

$prototype=QWidgetList windowList ( WindowOrder order = CreationOrder ) const
$method=|QWidgetList|windowList|QWorkspace::WindowOrder=QWorkspace::CreationOrder

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

$prototype=void activateNextWindow ()
$method=|void|activateNextWindow|

$prototype=void activatePreviousWindow ()
$method=|void|activatePreviousWindow|

$prototype=void arrangeIcons ()
$method=|void|arrangeIcons|

$prototype=void cascade ()
$method=|void|cascade|

$prototype=void closeActiveWindow ()
$method=|void|closeActiveWindow|

$prototype=void closeAllWindows ()
$method=|void|closeAllWindows|

$prototype=void setActiveWindow ( QWidget * w )
$method=|void|setActiveWindow|QWidget *

$prototype=void tile ()
$method=|void|tile|

$beginSignals
$signal=|windowActivated(QWidget*)
$endSignals

#pragma ENDDUMP

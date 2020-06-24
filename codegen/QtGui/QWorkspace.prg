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

$prototype=QWorkspace ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototypeV2=QWidget * activeWindow() const

$prototypeV2=QWidget * addWindow( QWidget * w, Qt::WindowFlags flags = 0 )

$prototypeV2=QBrush background() const

$prototypeV2=bool scrollBarsEnabled() const

$prototypeV2=void setBackground( const QBrush & background )

$prototypeV2=void setScrollBarsEnabled( bool enable )

$prototypeV2=QWidgetList windowList( QWorkspace::WindowOrder order = QWorkspace::CreationOrder ) const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void activateNextWindow()

$prototypeV2=void activatePreviousWindow()

$prototypeV2=void arrangeIcons()

$prototypeV2=void cascade()

$prototypeV2=void closeActiveWindow()

$prototypeV2=void closeAllWindows()

$prototypeV2=void setActiveWindow( QWidget * w )

$prototypeV2=void tile()

$beginSignals
$signal=|windowActivated(QWidget*)
$endSignals

#pragma ENDDUMP

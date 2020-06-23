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

$beginClassFrom=QAbstractButton

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QAction>
#include <QtGui/QMenu>

$prototype=QToolButton ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototypeV2=Qt::ArrowType arrowType() const

$prototypeV2=bool autoRaise() const

$prototypeV2=QAction * defaultAction() const

$prototypeV2=QMenu * menu() const

$prototypeV2=QToolButton::ToolButtonPopupMode popupMode() const

$prototypeV2=void setArrowType( Qt::ArrowType type )

$prototypeV2=void setAutoRaise( bool enable )

$prototypeV2=void setMenu( QMenu * menu )

$prototypeV2=void setPopupMode( QToolButton::ToolButtonPopupMode mode )

$prototypeV2=Qt::ToolButtonStyle toolButtonStyle() const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void setDefaultAction( QAction * action )

$prototypeV2=void setToolButtonStyle( Qt::ToolButtonStyle style )

$prototypeV2=void showMenu()

$beginSignals
$signal=|triggered(QAction*)
$endSignals

#pragma ENDDUMP

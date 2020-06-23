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

$beginClassFrom=QFrame

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QScrollBar>

$deleteMethod

$prototypeV2=void addScrollBarWidget( QWidget * widget, Qt::Alignment alignment )

$prototypeV2=QWidget * cornerWidget() const

$prototypeV2=QScrollBar * horizontalScrollBar() const

$prototypeV2=Qt::ScrollBarPolicy horizontalScrollBarPolicy() const

$prototypeV2=QSize maximumViewportSize() const

$prototypeV2=QWidgetList scrollBarWidgets( Qt::Alignment alignment )

$prototypeV2=void setCornerWidget( QWidget * widget )

$prototypeV2=void setHorizontalScrollBar( QScrollBar * scrollBar )

$prototypeV2=void setHorizontalScrollBarPolicy( Qt::ScrollBarPolicy )

$prototypeV2=void setVerticalScrollBar( QScrollBar * scrollBar )

$prototypeV2=void setVerticalScrollBarPolicy( Qt::ScrollBarPolicy )

$prototypeV2=void setViewport( QWidget * widget )

$prototypeV2=QScrollBar * verticalScrollBar() const

$prototypeV2=Qt::ScrollBarPolicy verticalScrollBarPolicy() const

$prototypeV2=QWidget * viewport() const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

#pragma ENDDUMP

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

$prototype=void addScrollBarWidget ( QWidget * widget, Qt::Alignment alignment )
$method=|void|addScrollBarWidget|QWidget *,Qt::Alignment

$prototypeV2=QWidget * cornerWidget() const

$prototypeV2=QScrollBar * horizontalScrollBar() const

$prototypeV2=Qt::ScrollBarPolicy horizontalScrollBarPolicy() const

$prototypeV2=QSize maximumViewportSize() const

$prototype=QWidgetList scrollBarWidgets ( Qt::Alignment alignment )
$method=|QWidgetList|scrollBarWidgets|Qt::Alignment

$prototype=void setCornerWidget ( QWidget * widget )
$method=|void|setCornerWidget|QWidget *

$prototype=void setHorizontalScrollBar ( QScrollBar * scrollBar )
$method=|void|setHorizontalScrollBar|QScrollBar *

$prototype=void setHorizontalScrollBarPolicy ( Qt::ScrollBarPolicy )
$method=|void|setHorizontalScrollBarPolicy|Qt::ScrollBarPolicy

$prototype=void setVerticalScrollBar ( QScrollBar * scrollBar )
$method=|void|setVerticalScrollBar|QScrollBar *

$prototype=void setVerticalScrollBarPolicy ( Qt::ScrollBarPolicy )
$method=|void|setVerticalScrollBarPolicy|Qt::ScrollBarPolicy

$prototype=void setViewport ( QWidget * widget )
$method=|void|setViewport|QWidget *

$prototypeV2=QScrollBar * verticalScrollBar() const

$prototypeV2=Qt::ScrollBarPolicy verticalScrollBarPolicy() const

$prototypeV2=QWidget * viewport() const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

#pragma ENDDUMP

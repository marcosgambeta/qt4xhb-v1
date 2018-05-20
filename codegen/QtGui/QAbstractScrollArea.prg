%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QSCROLLBAR
REQUEST QSIZE
#endif

$beginClassFrom=QFrame

   METHOD delete
   METHOD addScrollBarWidget
   METHOD cornerWidget
   METHOD horizontalScrollBar
   METHOD horizontalScrollBarPolicy
   METHOD maximumViewportSize
   METHOD scrollBarWidgets
   METHOD setCornerWidget
   METHOD setHorizontalScrollBar
   METHOD setHorizontalScrollBarPolicy
   METHOD setVerticalScrollBar
   METHOD setVerticalScrollBarPolicy
   METHOD setViewport
   METHOD verticalScrollBar
   METHOD verticalScrollBarPolicy
   METHOD viewport
   METHOD minimumSizeHint
   METHOD sizeHint

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QScrollBar>

$deleteMethod

$prototype=void addScrollBarWidget ( QWidget * widget, Qt::Alignment alignment )
$method=|void|addScrollBarWidget|QWidget *,Qt::Alignment

$prototype=QWidget * cornerWidget () const
$method=|QWidget *|cornerWidget|

$prototype=QScrollBar * horizontalScrollBar () const
$method=|QScrollBar *|horizontalScrollBar|

$prototype=Qt::ScrollBarPolicy horizontalScrollBarPolicy () const
$method=|Qt::ScrollBarPolicy|horizontalScrollBarPolicy|

$prototype=QSize maximumViewportSize () const
$method=|QSize|maximumViewportSize|

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

$prototype=QScrollBar * verticalScrollBar () const
$method=|QScrollBar *|verticalScrollBar|

$prototype=Qt::ScrollBarPolicy verticalScrollBarPolicy () const
$method=|Qt::ScrollBarPolicy|verticalScrollBarPolicy|

$prototype=QWidget * viewport () const
$method=|QWidget *|viewport|

$prototype=virtual QSize minimumSizeHint () const
$virtualMethod=|QSize|minimumSizeHint|

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP

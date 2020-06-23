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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QScrollArea ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototypeV2=Qt::Alignment alignment() const

$prototype=void ensureVisible ( int x, int y, int xmargin = 50, int ymargin = 50 )
$method=|void|ensureVisible|int,int,int=50,int=50

$prototype=void ensureWidgetVisible ( QWidget * childWidget, int xmargin = 50, int ymargin = 50 )
$method=|void|ensureWidgetVisible|QWidget *,int=50,int=50

$prototypeV2=void setAlignment( Qt::Alignment )

$prototypeV2=void setWidget( QWidget * widget )

$prototypeV2=void setWidgetResizable( bool resizable )

$prototypeV2=QWidget * takeWidget()

$prototypeV2=QWidget * widget() const

$prototypeV2=bool widgetResizable() const

$prototypeV2=virtual bool focusNextPrevChild( bool next )

$prototypeV2=virtual QSize sizeHint() const

#pragma ENDDUMP

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QFrame ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

$prototypeV2=QRect frameRect() const

$prototypeV2=QFrame::Shadow frameShadow() const

$prototypeV2=QFrame::Shape frameShape() const

$prototypeV2=int frameStyle() const

$prototypeV2=int frameWidth() const

$prototypeV2=int lineWidth() const

$prototypeV2=int midLineWidth() const

$prototype=void setFrameRect ( const QRect & )
$method=|void|setFrameRect|const QRect &

$prototype=void setFrameShadow ( Shadow )
$method=|void|setFrameShadow|QFrame::Shadow

$prototype=void setFrameShape ( Shape )
$method=|void|setFrameShape|QFrame::Shape

$prototype=void setFrameStyle ( int style )
$method=|void|setFrameStyle|int

$prototype=void setLineWidth ( int )
$method=|void|setLineWidth|int

$prototype=void setMidLineWidth ( int )
$method=|void|setMidLineWidth|int

$prototype=virtual QSize sizeHint () const
$virtualMethod=|QSize|sizeHint|

#pragma ENDDUMP

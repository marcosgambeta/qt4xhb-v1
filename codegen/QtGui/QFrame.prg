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

$prototypeV2=void setFrameRect( const QRect & )

$prototypeV2=void setFrameShadow( QFrame::Shadow )

$prototypeV2=void setFrameShape( QFrame::Shape )

$prototypeV2=void setFrameStyle( int style )

$prototypeV2=void setLineWidth( int )

$prototypeV2=void setMidLineWidth( int )

$prototypeV2=virtual QSize sizeHint() const

#pragma ENDDUMP

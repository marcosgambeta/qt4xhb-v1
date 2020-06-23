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

$beginClassFrom=QLayoutItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QWidgetItem ( QWidget * widget )
$constructor=|new|QWidget *

$deleteMethod

$prototypeV2=virtual Qt::Orientations expandingDirections() const

$prototypeV2=virtual QRect geometry() const

$prototypeV2=virtual bool hasHeightForWidth() const

$prototypeV2=virtual int heightForWidth( int w ) const

$prototypeV2=virtual bool isEmpty() const

$prototypeV2=virtual QSize maximumSize() const

$prototypeV2=virtual QSize minimumSize() const

$prototypeV2=virtual void setGeometry( const QRect & rect )

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=virtual QWidget * widget()

#pragma ENDDUMP

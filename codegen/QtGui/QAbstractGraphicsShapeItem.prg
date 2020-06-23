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

$beginClassFrom=QGraphicsItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QBrush>
#include <QtGui/QPen>

$deleteMethod

$prototypeV2=QBrush brush() const

$prototypeV2=QPen pen() const

$prototypeV2=void setBrush( const QBrush & brush )

$prototypeV2=void setPen( const QPen & pen )

$prototypeV2=virtual bool isObscuredBy( const QGraphicsItem * item ) const

$prototypeV2=virtual QPainterPath opaqueArea() const

#pragma ENDDUMP

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

$beginClassFrom=QGraphicsLayoutItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=void activate()

$prototypeV2=virtual int count() const = 0

$prototypeV2=virtual void invalidate()

$prototypeV2=bool isActivated() const

$prototypeV2=virtual QGraphicsLayoutItem * itemAt( int i ) const = 0

$prototypeV2=virtual void removeAt( int index ) = 0

$prototypeV2=void setContentsMargins( qreal left, qreal top, qreal right, qreal bottom )

$prototypeV2=virtual void widgetEvent( QEvent * e )

$prototypeV2=virtual void getContentsMargins( qreal * left, qreal * top, qreal * right, qreal * bottom ) const

$prototypeV2=virtual void updateGeometry()

$prototypeV2=static bool instantInvalidatePropagation()

$prototypeV2=static void setInstantInvalidatePropagation( bool enable )

#pragma ENDDUMP

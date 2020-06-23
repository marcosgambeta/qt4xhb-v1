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

$beginClassFrom=QGraphicsLayout

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsAnchorLayout ( QGraphicsLayoutItem * parent = 0 )
$constructor=|new|QGraphicsLayoutItem *=0

$deleteMethod

$prototypeV2=QGraphicsAnchor * addAnchor( QGraphicsLayoutItem * firstItem, Qt::AnchorPoint firstEdge, QGraphicsLayoutItem * secondItem, Qt::AnchorPoint secondEdge )

$prototype=void addAnchors ( QGraphicsLayoutItem * firstItem, QGraphicsLayoutItem * secondItem, Qt::Orientations orientations = Qt::Horizontal | Qt::Vertical )
$method=|void|addAnchors|QGraphicsLayoutItem *,QGraphicsLayoutItem *,Qt::Orientations=Qt::Horizontal OR Qt::Vertical

$prototypeV2=void addCornerAnchors( QGraphicsLayoutItem * firstItem, Qt::Corner firstCorner, QGraphicsLayoutItem * secondItem, Qt::Corner secondCorner )

$prototypeV2=QGraphicsAnchor * anchor( QGraphicsLayoutItem * firstItem, Qt::AnchorPoint firstEdge, QGraphicsLayoutItem * secondItem, Qt::AnchorPoint secondEdge )

$prototypeV2=qreal horizontalSpacing() const

$prototypeV2=void setHorizontalSpacing( qreal spacing )

$prototypeV2=void setSpacing( qreal spacing )

$prototypeV2=void setVerticalSpacing( qreal spacing )

$prototypeV2=qreal verticalSpacing() const

$prototypeV2=virtual int count() const

$prototypeV2=virtual void invalidate()

$prototypeV2=virtual QGraphicsLayoutItem * itemAt( int index ) const

$prototypeV2=virtual void removeAt( int index )

$prototypeV2=virtual void setGeometry( const QRectF & geom )

#pragma ENDDUMP

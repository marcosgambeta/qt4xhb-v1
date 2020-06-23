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

$beginClassFrom=QGraphicsWidget

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsProxyWidget ( QGraphicsItem * parent = 0, Qt::WindowFlags wFlags = 0 )
$constructor=|new|QGraphicsItem *=0,Qt::WindowFlags=0

$deleteMethod

$prototypeV2=QGraphicsProxyWidget * createProxyForChildWidget( QWidget * child )

$prototypeV2=void setWidget( QWidget * widget )

$prototypeV2=QRectF subWidgetRect( const QWidget * widget ) const

$prototypeV2=QWidget * widget() const

$prototypeV2=virtual void paint( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )

$prototypeV2=virtual void setGeometry( const QRectF & rect )

$prototypeV2=virtual int type() const

#pragma ENDDUMP

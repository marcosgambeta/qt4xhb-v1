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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototypeV2=QString anchorAt( const QPointF & position ) const

$prototypeV2=virtual QRectF blockBoundingRect( const QTextBlock & block ) const = 0

$prototypeV2=QTextDocument * document() const

$prototypeV2=virtual QSizeF documentSize() const = 0

$prototypeV2=virtual QRectF frameBoundingRect( QTextFrame * frame ) const = 0

$prototypeV2=QTextObjectInterface * handlerForObject( int objectType ) const

$prototypeV2=virtual int hitTest( const QPointF & point, Qt::HitTestAccuracy accuracy ) const = 0

$prototypeV2=virtual int pageCount() const = 0

$prototypeV2=QPaintDevice * paintDevice() const

$prototypeV2=void registerHandler( int objectType, QObject * component )

$prototypeV2=void setPaintDevice( QPaintDevice * device )

$beginSignals
$signal=|documentSizeChanged(QSizeF)
$signal=|pageCountChanged(int)
$signal=|update(QRectF)
$signal=|updateBlock(QTextBlock)
$endSignals

#pragma ENDDUMP

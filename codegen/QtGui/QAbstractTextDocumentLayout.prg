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

$prototype=QString anchorAt ( const QPointF & position ) const
$method=|QString|anchorAt|const QPointF &

$prototype=virtual QRectF blockBoundingRect ( const QTextBlock & block ) const = 0
$virtualMethod=|QRectF|blockBoundingRect|const QTextBlock &

$prototypeV2=QTextDocument * document() const

$prototypeV2=virtual QSizeF documentSize() const = 0

$prototype=virtual QRectF frameBoundingRect ( QTextFrame * frame ) const = 0
$virtualMethod=|QRectF|frameBoundingRect|QTextFrame *

$prototype=QTextObjectInterface * handlerForObject ( int objectType ) const
$method=|QTextObjectInterface *|handlerForObject|int

$prototype=virtual int hitTest ( const QPointF & point, Qt::HitTestAccuracy accuracy ) const = 0
$virtualMethod=|int|hitTest|const QPointF &,Qt::HitTestAccuracy

$prototypeV2=virtual int pageCount() const = 0

$prototypeV2=QPaintDevice * paintDevice() const

$prototype=void registerHandler ( int objectType, QObject * component )
$method=|void|registerHandler|int,QObject *

$prototype=void setPaintDevice ( QPaintDevice * device )
$method=|void|setPaintDevice|QPaintDevice *

$beginSignals
$signal=|documentSizeChanged(QSizeF)
$signal=|pageCountChanged(int)
$signal=|update(QRectF)
$signal=|updateBlock(QTextBlock)
$endSignals

#pragma ENDDUMP

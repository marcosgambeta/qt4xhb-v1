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

$beginClassFrom=QAbstractTextDocumentLayout

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QPlainTextDocumentLayout ( QTextDocument * document )
$constructor=|new|QTextDocument *

$deleteMethod

$prototypeV2=int cursorWidth() const

$prototypeV2=void ensureBlockLayout( const QTextBlock & block ) const

$prototypeV2=void requestUpdate()

$prototypeV2=void setCursorWidth( int width )

$prototypeV2=virtual QRectF blockBoundingRect( const QTextBlock & block ) const

$prototypeV2=virtual QSizeF documentSize() const

$prototypeV2=virtual QRectF frameBoundingRect( QTextFrame * ) const

$prototypeV2=virtual int hitTest( const QPointF &, Qt::HitTestAccuracy ) const

$prototypeV2=virtual int pageCount() const

#pragma ENDDUMP

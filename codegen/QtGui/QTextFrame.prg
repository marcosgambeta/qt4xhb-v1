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

$beginClassFrom=QTextObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QTextCursor>

$prototype=QTextFrame ( QTextDocument * document )
$constructor=|new|QTextDocument *

$deleteMethod

$prototypeV2=QList<QTextFrame *> childFrames() const

$prototypeV2=QTextCursor firstCursorPosition() const

$prototypeV2=int firstPosition() const

$prototypeV2=QTextFrameFormat frameFormat() const

$prototypeV2=QTextCursor lastCursorPosition() const

$prototypeV2=int lastPosition() const

$prototypeV2=QTextFrame * parentFrame() const

$prototypeV2=void setFrameFormat( const QTextFrameFormat & format )

#pragma ENDDUMP

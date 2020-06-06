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

$prototype=QList<QTextFrame *> childFrames () const
$method=|QList<QTextFrame *>|childFrames|

$prototype=QTextCursor firstCursorPosition () const
$method=|QTextCursor|firstCursorPosition|

$prototypeV2=int firstPosition() const

$prototype=QTextFrameFormat frameFormat () const
$method=|QTextFrameFormat|frameFormat|

$prototype=QTextCursor lastCursorPosition () const
$method=|QTextCursor|lastCursorPosition|

$prototypeV2=int lastPosition() const

$prototype=QTextFrame * parentFrame () const
$method=|QTextFrame *|parentFrame|

$prototype=void setFrameFormat ( const QTextFrameFormat & format )
$method=|void|setFrameFormat|const QTextFrameFormat &

#pragma ENDDUMP

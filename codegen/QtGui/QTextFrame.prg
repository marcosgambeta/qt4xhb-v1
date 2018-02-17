%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTFRAME
REQUEST QTEXTCURSOR
REQUEST QTEXTFRAMEFORMAT
#endif

CLASS QTextFrame INHERIT QTextObject

   METHOD new
   METHOD delete
   METHOD childFrames
   METHOD firstCursorPosition
   METHOD firstPosition
   METHOD frameFormat
   METHOD lastCursorPosition
   METHOD lastPosition
   METHOD parentFrame
   METHOD setFrameFormat

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

#include <QTextCursor>

$prototype=QTextFrame ( QTextDocument * document )
$constructor=|new|QTextDocument *

$deleteMethod

$prototype=QList<QTextFrame *> childFrames () const
$method=|QList<QTextFrame *>|childFrames|

$prototype=QTextCursor firstCursorPosition () const
$method=|QTextCursor|firstCursorPosition|

$prototype=int firstPosition () const
$method=|int|firstPosition|

$prototype=QTextFrameFormat frameFormat () const
$method=|QTextFrameFormat|frameFormat|

$prototype=QTextCursor lastCursorPosition () const
$method=|QTextCursor|lastCursorPosition|

$prototype=int lastPosition () const
$method=|int|lastPosition|

$prototype=QTextFrame * parentFrame () const
$method=|QTextFrame *|parentFrame|

$prototype=void setFrameFormat ( const QTextFrameFormat & format )
$method=|void|setFrameFormat|const QTextFrameFormat &

#pragma ENDDUMP

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

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QTextDocument>

$prototype=QTextDocument * document () const
$method=|QTextDocument *|document|

$prototype=QTextFormat format () const
$method=|QTextFormat|format|

$prototype=int formatIndex () const
$method=|int|formatIndex|

$prototype=int objectIndex () const
$method=|int|objectIndex|

#pragma ENDDUMP

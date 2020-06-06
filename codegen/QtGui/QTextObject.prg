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

$prototypeV2=int formatIndex() const

$prototypeV2=int objectIndex() const

#pragma ENDDUMP

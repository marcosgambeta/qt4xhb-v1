%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QEvent ( Type type )
$constructor=|new|QEvent::Type

$deleteMethod

$prototype=void accept ()
$method=|void|accept|

$prototype=void ignore ()
$method=|void|ignore|

$prototypeV2=bool isAccepted() const

$prototype=void setAccepted ( bool accepted )
$method=|void|setAccepted|bool

$prototypeV2=bool spontaneous() const

$prototype=Type type () const
$method=|QEvent::Type|type|

$prototype=static int registerEventType ( int hint = -1 )
$staticMethod=|int|registerEventType|int=-1

$extraMethods

#pragma ENDDUMP

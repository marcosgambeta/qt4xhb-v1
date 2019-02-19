%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtXmlPatterns

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtXmlPatterns/QXmlItem>

$prototype=QXmlResultItems ()
$constructor=|new|

$deleteMethod

$prototype=QXmlItem current () const
$method=|QXmlItem|current|

$prototype=bool hasError () const
$method=|bool|hasError|

$prototype=QXmlItem next ()
$method=|QXmlItem|next|

$extraMethods

#pragma ENDDUMP

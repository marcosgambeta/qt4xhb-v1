%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtXml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QXmlReader

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlSimpleReader ()
$constructor=|new|

$deleteMethod

$prototypeV2=virtual bool parse( const QXmlInputSource * input, bool incremental )

$prototypeV2=virtual bool parseContinue()

#pragma ENDDUMP

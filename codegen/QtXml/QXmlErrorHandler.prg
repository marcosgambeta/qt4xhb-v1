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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual bool error( const QXmlParseException & exception ) = 0

$prototypeV2=virtual QString errorString() const = 0

$prototypeV2=virtual bool fatalError( const QXmlParseException & exception ) = 0

$prototypeV2=virtual bool warning( const QXmlParseException & exception ) = 0

$extraMethods

#pragma ENDDUMP

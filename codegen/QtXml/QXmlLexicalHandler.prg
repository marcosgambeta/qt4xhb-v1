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

$prototypeV2=virtual bool comment( const QString & ch ) = 0

$prototypeV2=virtual bool endCDATA() = 0

$prototypeV2=virtual bool endDTD() = 0

$prototypeV2=virtual bool endEntity( const QString & name ) = 0

$prototypeV2=virtual QString errorString() const = 0

$prototypeV2=virtual bool startCDATA() = 0

$prototypeV2=virtual bool startDTD( const QString & name, const QString & publicId, const QString & systemId ) = 0

$prototypeV2=virtual bool startEntity( const QString & name ) = 0

$extraMethods

#pragma ENDDUMP

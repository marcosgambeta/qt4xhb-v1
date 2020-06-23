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

$prototypeV2=virtual QString errorString() const = 0

$prototypeV2=virtual bool notationDecl( const QString & name, const QString & publicId, const QString & systemId ) = 0

$prototypeV2=virtual bool unparsedEntityDecl( const QString & name, const QString & publicId, const QString & systemId, const QString & notationName ) = 0

$extraMethods

#pragma ENDDUMP

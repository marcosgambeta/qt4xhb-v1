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

$prototypeV2=virtual bool attributeDecl( const QString & eName, const QString & aName, const QString & type, const QString & valueDefault, const QString & value ) = 0

$prototypeV2=virtual QString errorString() const = 0

$prototypeV2=virtual bool externalEntityDecl( const QString & name, const QString & publicId, const QString & systemId ) = 0

$prototypeV2=virtual bool internalEntityDecl( const QString & name, const QString & value ) = 0

$extraMethods

#pragma ENDDUMP

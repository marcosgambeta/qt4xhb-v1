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

$prototypeV2=static QString licensee()

$prototypeV2=static QString licensedProducts()

$prototypeV2=static QString buildKey()

$prototypeV2=static QDate buildDate()

$prototypeV2=static QString location( QLibraryInfo::LibraryLocation )

$extraMethods

#pragma ENDDUMP

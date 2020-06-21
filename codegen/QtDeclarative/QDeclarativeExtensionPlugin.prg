%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtDeclarative

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=virtual void initializeEngine ( QDeclarativeEngine * engine, const char * uri )
$virtualMethod=|void|initializeEngine|QDeclarativeEngine *,const char *

$prototypeV2=virtual void registerTypes( const char * uri ) = 0

#pragma ENDDUMP

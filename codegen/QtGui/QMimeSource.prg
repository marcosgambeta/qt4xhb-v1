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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual QByteArray encodedData( const char * format ) const = 0

$prototype=virtual const char * format ( int i = 0 ) const = 0
$virtualMethod=|const char *|format|int=0

$prototypeV2=virtual bool provides( const char * mimeType ) const

$extraMethods

#pragma ENDDUMP

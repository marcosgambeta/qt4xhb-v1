%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClass

   METHOD delete
   METHOD encodedData
   METHOD format
   METHOD provides

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual QByteArray encodedData ( const char * format ) const = 0
$virtualMethod=|QByteArray|encodedData|const char *

$prototype=virtual const char * format ( int i = 0 ) const = 0
$virtualMethod=|const char *|format|int=0

$prototype=virtual bool provides ( const char * mimeType ) const
$virtualMethod=|bool|provides|const char *

$extraMethods

#pragma ENDDUMP

%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEvent

   METHOD new
   METHOD delete
   METHOD propertyName

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDynamicPropertyChangeEvent ( const QByteArray & name )
$constructor=|new|const QByteArray &

$deleteMethod

$prototype=QByteArray propertyName () const
$method=|QByteArray|propertyName|

#pragma ENDDUMP

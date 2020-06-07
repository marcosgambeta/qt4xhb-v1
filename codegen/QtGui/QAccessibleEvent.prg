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

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAccessibleEvent ( Type type, int child )
$constructor=|new|QAccessibleEvent::Type,int

$prototypeV2=int child() const

$prototype=void setValue ( const QString & text )
$method=|void|setValue|const QString &

$prototypeV2=QString value() const

#pragma ENDDUMP

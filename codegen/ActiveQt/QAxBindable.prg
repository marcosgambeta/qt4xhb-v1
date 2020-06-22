%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=ActiveQt

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QAxBindable ()
$constructor=|new|

$deleteMethod

$prototypeV2=virtual QAxAggregated * createAggregate()

$prototypeV2=virtual bool readData( QIODevice * source, const QString & format )

$prototype=void reportError ( int code, const QString & src, const QString & desc, const QString & context = QString() )
$method=|void|reportError|int,const QString &,const QString &,const QString &=QString()

$prototypeV2=virtual bool writeData( QIODevice * sink )

$extraMethods

#pragma ENDDUMP

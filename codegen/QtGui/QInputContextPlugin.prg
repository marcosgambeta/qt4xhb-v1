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

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QInputContext>

$deleteMethod

$prototypeV2=virtual QInputContext * create( const QString & key ) = 0

$prototypeV2=virtual QString description( const QString & key ) = 0

$prototypeV2=virtual QString displayName( const QString & key ) = 0

$prototypeV2=virtual QStringList keys() const = 0

$prototypeV2=virtual QStringList languages( const QString & key ) = 0

#pragma ENDDUMP

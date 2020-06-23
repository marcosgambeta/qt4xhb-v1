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

#include <QtGui/QInputContext>

$deleteMethod

$prototypeV2=QInputContext * create( const QString & key, QObject * parent )

$prototypeV2=static QString description( const QString & key )

$prototypeV2=static QString displayName( const QString & key )

$prototypeV2=static QStringList keys()

$prototypeV2=static QStringList languages( const QString & key )

$extraMethods

#pragma ENDDUMP

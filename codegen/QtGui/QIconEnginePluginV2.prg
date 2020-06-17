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

$deleteMethod

$prototype=virtual QIconEngineV2 * create ( const QString & filename = QString() ) = 0
$virtualMethod=|QIconEngineV2 *|create|const QString &=QString()

$prototypeV2=virtual QStringList keys() const = 0

#pragma ENDDUMP

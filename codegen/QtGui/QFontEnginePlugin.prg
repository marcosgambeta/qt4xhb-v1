%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
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

$prototype=virtual QList<QFontEngineInfo> availableFontEngines () const = 0
$virtualMethod=|QList<QFontEngineInfo>|availableFontEngines|

$prototype=virtual QAbstractFontEngine * create ( const QFontEngineInfo & info ) = 0
$virtualMethod=|QAbstractFontEngine *|create|const QFontEngineInfo &

$prototype=virtual QStringList keys () const
$virtualMethod=|QStringList|keys|

#pragma ENDDUMP

%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

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

$prototypeV2=virtual QFileInfo currentFileInfo() const

$prototypeV2=virtual QString currentFileName() const = 0

$prototypeV2=QString currentFilePath() const

$prototypeV2=QDir::Filters filters() const

$prototypeV2=virtual bool hasNext() const = 0

$prototypeV2=QStringList nameFilters() const

$prototypeV2=virtual QString next() = 0

$prototypeV2=QString path() const

$extraMethods

#pragma ENDDUMP

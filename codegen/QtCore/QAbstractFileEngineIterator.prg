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

$prototype=virtual QFileInfo currentFileInfo () const
$virtualMethod=|QFileInfo|currentFileInfo|

$prototypeV2=virtual QString currentFileName() const = 0

$prototypeV2=QString currentFilePath() const

$prototype=QDir::Filters filters () const
$method=|QDir::Filters|filters|

$prototypeV2=virtual bool hasNext() const = 0

$prototype=QStringList nameFilters () const
$method=|QStringList|nameFilters|

$prototypeV2=virtual QString next() = 0

$prototypeV2=QString path() const

$extraMethods

#pragma ENDDUMP

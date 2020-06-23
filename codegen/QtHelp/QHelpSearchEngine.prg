%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtHelp

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtHelp/QHelpSearchQueryWidget>
#include <QtHelp/QHelpSearchResultWidget>

$prototype=QHelpSearchEngine ( QHelpEngineCore * helpEngine, QObject * parent = 0 )
$constructor=|new|QHelpEngineCore *,QObject *=0

$deleteMethod

$prototypeV2=int hitCount() const

$prototypeV2=QList<QHelpSearchQuery> query() const

$prototypeV2=QHelpSearchQueryWidget * queryWidget()

$prototypeV2=QHelpSearchResultWidget * resultWidget()

$prototypeV2=void cancelIndexing()

$prototypeV2=void cancelSearching()

$prototypeV2=void reindexDocumentation()

$prototypeV2=void search( const QList<QHelpSearchQuery> & queryList )

$beginSignals
$signal=|indexingFinished()
$signal=|indexingStarted()
$signal=|searchingFinished(int)
$signal=|searchingStarted()
$endSignals

#pragma ENDDUMP

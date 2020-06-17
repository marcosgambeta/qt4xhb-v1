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

$beginClassFrom=QHelpEngineCore

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtHelp/QHelpContentModel>
#include <QtHelp/QHelpContentWidget>
#include <QtHelp/QHelpIndexModel>
#include <QtHelp/QHelpIndexWidget>
#include <QtHelp/QHelpSearchEngine>

$prototype=QHelpEngine ( const QString & collectionFile, QObject * parent = 0 )
$constructor=|new|const QString &,QObject *=0

$deleteMethod

$prototypeV2=QHelpContentModel * contentModel() const

$prototypeV2=QHelpContentWidget * contentWidget()

$prototypeV2=QHelpIndexModel * indexModel() const

$prototypeV2=QHelpIndexWidget * indexWidget()

$prototypeV2=QHelpSearchEngine * searchEngine()

#pragma ENDDUMP

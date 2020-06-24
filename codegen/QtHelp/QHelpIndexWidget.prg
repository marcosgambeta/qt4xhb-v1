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

$beginClassFrom=QListView

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototypeV2=void activateCurrentItem()

$prototypeV2=void filterIndices( const QString & filter, const QString & wildcard = QString() )

$beginSignals
$signal=|linkActivated(QUrl,QString)
$endSignals

#pragma ENDDUMP

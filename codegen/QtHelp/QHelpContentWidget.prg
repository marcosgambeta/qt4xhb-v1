%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMODELINDEX
#endif

CLASS QHelpContentWidget INHERIT QTreeView

   METHOD indexOf

   METHOD onLinkActivated

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QModelIndex indexOf ( const QUrl & link )
$method=|QModelIndex|indexOf|const QUrl &

#pragma ENDDUMP

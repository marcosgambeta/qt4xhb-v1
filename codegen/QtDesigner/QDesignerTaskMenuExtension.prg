%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtDesigner

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QAction>

$deleteMethod

$prototypeV2=virtual QAction * preferredEditAction() const

$prototypeV2=virtual QList<QAction *> taskActions() const = 0

$extraMethods

#pragma ENDDUMP

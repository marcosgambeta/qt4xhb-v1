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

$beginClassFrom=QEvent

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QAction>

$prototype=QActionEvent ( int type, QAction * action, QAction * before = 0 )
$constructor=|new|int,QAction *,QAction *=0

$deleteMethod

$prototypeV2=QAction * action() const

$prototypeV2=QAction * before() const

#pragma ENDDUMP

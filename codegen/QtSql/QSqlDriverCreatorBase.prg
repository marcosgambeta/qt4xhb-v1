%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSQLDRIVER
#endif

CLASS QSqlDriverCreatorBase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD createObject

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSqlDriverCreatorBase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QSqlDriver>

$deleteMethod

$prototype=virtual QSqlDriver * createObject () const = 0
$virtualMethod=|QSqlDriver *|createObject|

$extraMethods

#pragma ENDDUMP

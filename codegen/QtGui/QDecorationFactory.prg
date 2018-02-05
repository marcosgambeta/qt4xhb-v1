%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDECORATION
#endif

CLASS QDecorationFactory

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD create
   METHOD keys

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDecorationFactory>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=static QDecoration * create ( const QString & key )
$staticMethod=|QDecoration *|create|const QString &

$prototype=static QStringList keys ()
$staticMethod=|QStringList|keys|

$extraMethods

#pragma ENDDUMP

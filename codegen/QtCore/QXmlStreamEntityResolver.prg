%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

CLASS QXmlStreamEntityResolver

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD resolveUndeclaredEntity

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QXmlStreamEntityResolver>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=virtual QString resolveUndeclaredEntity(const QString & name)
$virtualMethod=|QString|resolveUndeclaredEntity|const QString &

$extraMethods

#pragma ENDDUMP

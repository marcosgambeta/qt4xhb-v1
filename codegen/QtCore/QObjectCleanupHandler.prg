%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QObjectCleanupHandler INHERIT QObject

   METHOD new
   METHOD delete
   METHOD add
   METHOD remove
   METHOD isEmpty
   METHOD clear

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QObjectCleanupHandler>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QObjectCleanupHandler()
$constructor=|new|

$deleteMethod

$prototype=QObject* add(QObject* object)
$method=|QObject *|add|QObject *

$prototype=void remove(QObject *object)
$method=|void|remove|QObject *

$prototype=bool isEmpty() const
$method=|bool|isEmpty|

$prototype=void clear()
$method=|void|clear|

#pragma ENDDUMP

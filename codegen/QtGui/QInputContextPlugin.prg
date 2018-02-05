%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QINPUTCONTEXT
#endif

CLASS QInputContextPlugin INHERIT QObject

   METHOD delete
   METHOD create
   METHOD description
   METHOD displayName
   METHOD keys
   METHOD languages

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QInputContextPlugin>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=virtual QInputContext * create ( const QString & key ) = 0
$virtualMethod=|QInputContext *|create|const QString &

$prototype=virtual QString description ( const QString & key ) = 0
$virtualMethod=|QString|description|const QString &

$prototype=virtual QString displayName ( const QString & key ) = 0
$virtualMethod=|QString|displayName|const QString &

$prototype=virtual QStringList keys () const = 0
$virtualMethod=|QStringList|keys|

$prototype=virtual QStringList languages ( const QString & key ) = 0
$virtualMethod=|QStringList|languages|const QString &

#pragma ENDDUMP

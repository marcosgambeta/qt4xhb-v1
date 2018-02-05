%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QMimeSource

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD encodedData
   METHOD format
   METHOD provides

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMimeSource>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=virtual QByteArray encodedData ( const char * format ) const = 0
$virtualMethod=|QByteArray|encodedData|const char *

$prototype=virtual const char * format ( int i = 0 ) const = 0
$virtualMethod=|const char *|format|int=0

$prototype=virtual bool provides ( const char * mimeType ) const
$virtualMethod=|bool|provides|const char *

$extraMethods

#pragma ENDDUMP

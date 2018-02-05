%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZEF
#endif

CLASS QGraphicsSceneResizeEvent INHERIT QGraphicsSceneEvent

   METHOD new
   METHOD delete
   METHOD newSize
   METHOD oldSize

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsSceneResizeEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QGraphicsSceneMoveEvent ()
$constructor=|new|

$deleteMethod

$prototype=QSizeF newSize () const
$method=|QSizeF|newSize|

$prototype=QSizeF oldSize () const
$method=|QSizeF|oldSize|

#pragma ENDDUMP

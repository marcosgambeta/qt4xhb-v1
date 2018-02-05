%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QPEN
REQUEST QPAINTERPATH
#endif

CLASS QAbstractGraphicsShapeItem INHERIT QGraphicsItem

   METHOD delete
   METHOD brush
   METHOD pen
   METHOD setBrush
   METHOD setPen
   METHOD isObscuredBy
   METHOD opaqueArea

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractGraphicsShapeItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QBrush>
#include <QPen>

$deleteMethod

$prototype=QBrush brush () const
$method=|QBrush|brush|

$prototype=QPen pen () const
$method=|QPen|pen|

$prototype=void setBrush ( const QBrush & brush )
$method=|void|setBrush|const QBrush &

$prototype=void setPen ( const QPen & pen )
$method=|void|setPen|const QPen &

$prototype=virtual bool isObscuredBy ( const QGraphicsItem * item ) const
$virtualMethod=|bool|isObscuredBy|const QGraphicsItem *

$prototype=virtual QPainterPath opaqueArea () const
$virtualMethod=|QPainterPath|opaqueArea|

#pragma ENDDUMP

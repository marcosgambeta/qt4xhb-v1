$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QPEN
REQUEST QPAINTERPATH
#endif

CLASS QAbstractGraphicsShapeItem INHERIT QGraphicsItem

   DATA self_destruction INIT .F.

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

/*
QBrush brush () const
*/
$method=|QBrush|brush|

/*
QPen pen () const
*/
$method=|QPen|pen|

/*
void setBrush ( const QBrush & brush )
*/
$method=|void|setBrush|const QBrush &

/*
void setPen ( const QPen & pen )
*/
$method=|void|setPen|const QPen &

/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
$virtualMethod=|bool|isObscuredBy|const QGraphicsItem *

/*
virtual QPainterPath opaqueArea () const
*/
$virtualMethod=|QPainterPath|opaqueArea|

#pragma ENDDUMP

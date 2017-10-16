$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsItemGroup INHERIT QGraphicsItem

   METHOD new
   METHOD delete
   METHOD addToGroup
   METHOD removeFromGroup
   METHOD boundingRect
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsItemGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsItemGroup ( QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSITEMGROUP_NEW )
{
  QGraphicsItemGroup * o = new QGraphicsItemGroup ( OPQGRAPHICSITEM(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
void addToGroup ( QGraphicsItem * item )
*/
$method=|void|addToGroup|QGraphicsItem *

/*
void removeFromGroup ( QGraphicsItem * item )
*/
$method=|void|removeFromGroup|QGraphicsItem *

/*
virtual QRectF boundingRect () const
*/
$virtualMethod=|QRectF|boundingRect|

/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
$virtualMethod=|bool|isObscuredBy|const QGraphicsItem *

/*
virtual QPainterPath opaqueArea () const
*/
$virtualMethod=|QPainterPath|opaqueArea|

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

/*
virtual int type () const
*/
$virtualMethod=|int|type|

#pragma ENDDUMP

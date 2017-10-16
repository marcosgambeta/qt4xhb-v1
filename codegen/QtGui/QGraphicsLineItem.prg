$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QLINEF
REQUEST QPEN
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsLineItem INHERIT QGraphicsItem

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD line
   METHOD pen
   METHOD setLine1
   METHOD setLine2
   METHOD setLine
   METHOD setPen
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsLineItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QPen>

/*
QGraphicsLineItem ( QGraphicsItem * parent = 0 )
*/
$constructor=|new1|QGraphicsItem *=0

/*
QGraphicsLineItem ( const QLineF & line, QGraphicsItem * parent = 0 )
*/
$constructor=|new2|const QLineF &,QGraphicsItem *=0

/*
QGraphicsLineItem ( qreal x1, qreal y1, qreal x2, qreal y2, QGraphicsItem * parent = 0 )
*/
$constructor=|new3|qreal,qreal,qreal,qreal,QGraphicsItem *=0

//[1]QGraphicsLineItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsLineItem ( const QLineF & line, QGraphicsItem * parent = 0 )
//[3]QGraphicsLineItem ( qreal x1, qreal y1, qreal x2, qreal y2, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSLINEITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSLINEITEM_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQLINEF(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSLINEITEM_NEW2 );
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQGRAPHICSITEM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QGRAPHICSLINEITEM_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QLineF line () const
*/
$method=|QLineF|line|

/*
QPen pen () const
*/
$method=|QPen|pen|

/*
void setLine ( const QLineF & line )
*/
$method=|void|setLine,setLine1|const QLineF &

/*
void setLine ( qreal x1, qreal y1, qreal x2, qreal y2 )
*/
$method=|void|setLine,setLine2|qreal,qreal,qreal,qreal

//[1]void setLine ( const QLineF & line )
//[2]void setLine ( qreal x1, qreal y1, qreal x2, qreal y2 )

HB_FUNC_STATIC( QGRAPHICSLINEITEM_SETLINE )
{
  if( ISNUMPAR(1) && ISQLINEF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSLINEITEM_SETLINE1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSLINEITEM_SETLINE2 );
  }
}

/*
void setPen ( const QPen & pen )
*/
$method=|void|setPen|const QPen &

/*
virtual QRectF boundingRect () const
*/
$virtualMethod=|QRectF|boundingRect|

/*
virtual bool contains ( const QPointF & point ) const
*/
$virtualMethod=|bool|contains|const QPointF &

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
virtual QPainterPath shape () const
*/
$virtualMethod=|QPainterPath|shape|

/*
virtual int type () const
*/
$virtualMethod=|int|type|

#pragma ENDDUMP

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QFONT
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsSimpleTextItem INHERIT QAbstractGraphicsShapeItem

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD font
   METHOD setFont
   METHOD setText
   METHOD text
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

#include <QGraphicsSimpleTextItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QFont>

/*
QGraphicsSimpleTextItem ( QGraphicsItem * parent = 0 )
*/
$constructor=|new1|QGraphicsItem *=0

/*
QGraphicsSimpleTextItem ( const QString & text, QGraphicsItem * parent = 0 )
*/
$constructor=|new2|const QString &,QGraphicsItem *=0

//[1]QGraphicsSimpleTextItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsSimpleTextItem ( const QString & text, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSSIMPLETEXTITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSIMPLETEXTITEM_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSIMPLETEXTITEM_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QFont font () const
*/
$method=|QFont|font|

/*
void setFont ( const QFont & font )
*/
$method=|void|setFont|const QFont &

/*
void setText ( const QString & text )
*/
$method=|void|setText|const QString &

/*
QString text () const
*/
$method=|QString|text|

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
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )
*/
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *

/*
virtual QPainterPath shape () const
*/
$virtualMethod=|QPainterPath|shape|

/*
virtual int type () const
*/
$virtualMethod=|int|type|

#pragma ENDDUMP

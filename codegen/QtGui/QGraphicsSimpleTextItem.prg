%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractGraphicsShapeItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QFont>

$prototype=QGraphicsSimpleTextItem ( QGraphicsItem * parent = 0 )
$internalConstructor=|new1|QGraphicsItem *=0

$prototype=QGraphicsSimpleTextItem ( const QString & text, QGraphicsItem * parent = 0 )
$internalConstructor=|new2|const QString &,QGraphicsItem *=0

/*
[1]QGraphicsSimpleTextItem ( QGraphicsItem * parent = 0 )
[2]QGraphicsSimpleTextItem ( const QString & text, QGraphicsItem * parent = 0 )
*/

HB_FUNC_STATIC( QGRAPHICSSIMPLETEXTITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsSimpleTextItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsSimpleTextItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QFont font() const

$prototypeV2=void setFont( const QFont & font )

$prototypeV2=void setText( const QString & text )

$prototypeV2=QString text() const

$prototypeV2=virtual QRectF boundingRect() const

$prototypeV2=virtual bool contains( const QPointF & point ) const

$prototypeV2=virtual bool isObscuredBy( const QGraphicsItem * item ) const

$prototypeV2=virtual QPainterPath opaqueArea() const

$prototypeV2=virtual void paint( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget )

$prototypeV2=virtual QPainterPath shape() const

$prototypeV2=virtual int type() const

#pragma ENDDUMP

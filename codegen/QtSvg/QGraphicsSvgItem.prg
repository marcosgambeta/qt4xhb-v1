%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtSvg

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtSvg/QSvgRenderer>

$prototype=QGraphicsSvgItem ( QGraphicsItem * parent = 0 )
$internalConstructor=|new1|QGraphicsItem *=0

$prototype=QGraphicsSvgItem ( const QString & fileName, QGraphicsItem * parent = 0 )
$internalConstructor=|new2|const QString &,QGraphicsItem *=0

/*
[1]QGraphicsSvgItem ( QGraphicsItem * parent = 0 )
[2]QGraphicsSvgItem ( const QString & fileName, QGraphicsItem * parent = 0 )
*/

HB_FUNC_STATIC( QGRAPHICSSVGITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    QGraphicsSvgItem_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    QGraphicsSvgItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$prototypeV2=QString elementId() const

$prototypeV2=QSize maximumCacheSize() const

$prototypeV2=QSvgRenderer * renderer() const

$prototype=void setElementId ( const QString & id )
$method=|void|setElementId|const QString &

$prototype=void setMaximumCacheSize ( const QSize & size )
$method=|void|setMaximumCacheSize|const QSize &

$prototype=void setSharedRenderer ( QSvgRenderer * renderer )
$method=|void|setSharedRenderer|QSvgRenderer *

$prototypeV2=virtual QRectF boundingRect() const

$prototype=virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
$virtualMethod=|void|paint|QPainter *,const QStyleOptionGraphicsItem *,QWidget *=0

$prototypeV2=virtual int type() const

#pragma ENDDUMP

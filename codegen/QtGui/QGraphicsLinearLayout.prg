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

$beginClassFrom=QGraphicsLayout

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QGraphicsLinearLayout ( QGraphicsLayoutItem * parent = 0 )
$internalConstructor=|new1|QGraphicsLayoutItem *=0

$prototype=QGraphicsLinearLayout ( Qt::Orientation orientation, QGraphicsLayoutItem * parent = 0 )
$internalConstructor=|new2|Qt::Orientation,QGraphicsLayoutItem *=0

/*
[1]QGraphicsLinearLayout ( QGraphicsLayoutItem * parent = 0 )
[2]QGraphicsLinearLayout ( Qt::Orientation orientation, QGraphicsLayoutItem * parent = 0 )
*/

HB_FUNC_STATIC( QGRAPHICSLINEARLAYOUT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSLAYOUTITEM(1)||ISNIL(1)) )
  {
    QGraphicsLinearLayout_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQGRAPHICSLAYOUTITEM(2)||ISNIL(2)) )
  {
    QGraphicsLinearLayout_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=void addItem( QGraphicsLayoutItem * item )

$prototypeV2=void addStretch( int stretch = 1 )

$prototypeV2=Qt::Alignment alignment( QGraphicsLayoutItem * item ) const

$prototypeV2=void insertItem( int index, QGraphicsLayoutItem * item )

$prototypeV2=void insertStretch( int index, int stretch = 1 )

$prototypeV2=qreal itemSpacing( int index ) const

$prototypeV2=Qt::Orientation orientation() const

$prototypeV2=void removeItem( QGraphicsLayoutItem * item )

$prototypeV2=void setAlignment( QGraphicsLayoutItem * item, Qt::Alignment alignment )

$prototypeV2=void setItemSpacing( int index, qreal spacing )

$prototypeV2=void setOrientation( Qt::Orientation orientation )

$prototypeV2=void setSpacing( qreal spacing )

$prototypeV2=void setStretchFactor( QGraphicsLayoutItem * item, int stretch )

$prototypeV2=qreal spacing() const

$prototypeV2=int stretchFactor( QGraphicsLayoutItem * item ) const

$prototypeV2=virtual int count() const

$prototypeV2=virtual void invalidate()

$prototypeV2=virtual QGraphicsLayoutItem * itemAt( int index ) const

$prototypeV2=virtual void removeAt( int index )

$prototypeV2=virtual void setGeometry( const QRectF & rect )

$prototypeV2=virtual QSizeF sizeHint( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const

#pragma ENDDUMP

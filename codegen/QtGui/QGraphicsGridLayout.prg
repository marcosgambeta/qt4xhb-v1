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

$prototype=QGraphicsGridLayout ( QGraphicsLayoutItem * parent = 0 )
$constructor=|new|QGraphicsLayoutItem *=0

$deleteMethod

$prototype=void addItem ( QGraphicsLayoutItem * item, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
$internalMethod=|void|addItem,addItem1|QGraphicsLayoutItem *,int,int,int,int,Qt::Alignment=0

$prototype=void addItem ( QGraphicsLayoutItem * item, int row, int column, Qt::Alignment alignment = 0 )
$internalMethod=|void|addItem,addItem2|QGraphicsLayoutItem *,int,int,Qt::Alignment=0

/*
[1]void addItem ( QGraphicsLayoutItem * item, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
[2]void addItem ( QGraphicsLayoutItem * item, int row, int column, Qt::Alignment alignment = 0 )
*/

HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ADDITEM )
{
  if( ISBETWEEN(5,6) && ISQGRAPHICSLAYOUTITEM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && (ISNUM(6)||ISNIL(6)) )
  {
    QGraphicsGridLayout_addItem1();
  }
  else if( ISBETWEEN(3,4) && ISQGRAPHICSLAYOUTITEM(1) && ISNUM(2) && ISNUM(3) && (ISNUM(3)||ISNIL(3)) )
  {
    QGraphicsGridLayout_addItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addItem

$prototypeV2=Qt::Alignment alignment( QGraphicsLayoutItem * item ) const

$prototypeV2=Qt::Alignment columnAlignment( int column ) const

$prototypeV2=int columnCount() const

$prototypeV2=qreal columnMaximumWidth( int column ) const

$prototypeV2=qreal columnMinimumWidth( int column ) const

$prototypeV2=qreal columnPreferredWidth( int column ) const

$prototypeV2=qreal columnSpacing( int column ) const

$prototypeV2=int columnStretchFactor( int column ) const

$prototypeV2=qreal horizontalSpacing() const

$prototype=QGraphicsLayoutItem * itemAt ( int row, int column ) const
$internalMethod=|QGraphicsLayoutItem *|itemAt,itemAt1|int,int

$prototype=virtual QGraphicsLayoutItem * itemAt ( int index ) const
$internalVirtualMethod=|QGraphicsLayoutItem *|itemAt,itemAt2|int

/*
[1]QGraphicsLayoutItem * itemAt ( int row, int column ) const
[2]virtual QGraphicsLayoutItem * itemAt ( int index ) const
*/

HB_FUNC_STATIC( QGRAPHICSGRIDLAYOUT_ITEMAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QGraphicsGridLayout_itemAt1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QGraphicsGridLayout_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=itemAt

$prototypeV2=void removeItem( QGraphicsLayoutItem * item )

$prototypeV2=Qt::Alignment rowAlignment( int row ) const

$prototypeV2=int rowCount() const

$prototypeV2=qreal rowMaximumHeight( int row ) const

$prototypeV2=qreal rowMinimumHeight( int row ) const

$prototypeV2=qreal rowPreferredHeight( int row ) const

$prototypeV2=qreal rowSpacing( int row ) const

$prototypeV2=int rowStretchFactor( int row ) const

$prototypeV2=void setAlignment( QGraphicsLayoutItem * item, Qt::Alignment alignment )

$prototypeV2=void setColumnAlignment( int column, Qt::Alignment alignment )

$prototypeV2=void setColumnFixedWidth( int column, qreal width )

$prototypeV2=void setColumnMaximumWidth( int column, qreal width )

$prototypeV2=void setColumnMinimumWidth( int column, qreal width )

$prototypeV2=void setColumnPreferredWidth( int column, qreal width )

$prototypeV2=void setColumnSpacing( int column, qreal spacing )

$prototypeV2=void setColumnStretchFactor( int column, int stretch )

$prototypeV2=void setHorizontalSpacing( qreal spacing )

$prototypeV2=void setRowAlignment( int row, Qt::Alignment alignment )

$prototypeV2=void setRowFixedHeight( int row, qreal height )

$prototypeV2=void setRowMaximumHeight( int row, qreal height )

$prototypeV2=void setRowMinimumHeight( int row, qreal height )

$prototypeV2=void setRowPreferredHeight( int row, qreal height )

$prototypeV2=void setRowSpacing( int row, qreal spacing )

$prototypeV2=void setRowStretchFactor( int row, int stretch )

$prototypeV2=void setSpacing( qreal spacing )

$prototypeV2=void setVerticalSpacing( qreal spacing )

$prototypeV2=qreal verticalSpacing() const

$prototypeV2=virtual int count() const

$prototypeV2=virtual void invalidate()

$prototypeV2=virtual void removeAt( int index )

$prototypeV2=virtual void setGeometry( const QRectF & rect )

$prototypeV2=virtual QSizeF sizeHint( Qt::SizeHint which, const QSizeF & constraint = QSizeF() ) const

#pragma ENDDUMP

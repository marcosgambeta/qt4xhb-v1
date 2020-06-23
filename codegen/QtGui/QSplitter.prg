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

$beginClassFrom=QFrame

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QSplitter ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QSplitter ( Qt::Orientation orientation, QWidget * parent = 0 )
$internalConstructor=|new2|Qt::Orientation,QWidget *=0

/*
[1]QSplitter ( QWidget * parent = 0 )
[2]QSplitter ( Qt::Orientation orientation, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QSPLITTER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QSplitter_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QSplitter_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=void addWidget( QWidget * widget )

$prototypeV2=bool childrenCollapsible() const

$prototypeV2=int count() const

$prototypeV2=void getRange( int index, int * min, int * max ) const

$prototypeV2=QSplitterHandle * handle( int index ) const

$prototypeV2=int handleWidth() const

$prototypeV2=int indexOf( QWidget * widget ) const

$prototypeV2=void insertWidget( int index, QWidget * widget )

$prototypeV2=bool isCollapsible( int index ) const

$prototypeV2=bool opaqueResize() const

$prototypeV2=Qt::Orientation orientation() const

$prototypeV2=void refresh()

$prototypeV2=bool restoreState( const QByteArray & state )

$prototypeV2=QByteArray saveState() const

$prototypeV2=void setChildrenCollapsible( bool )

$prototypeV2=void setCollapsible( int index, bool collapse )

$prototypeV2=void setHandleWidth( int )

$prototype=void setOpaqueResize ( bool opaque = true )
$method=|void|setOpaqueResize|bool=true

$prototypeV2=void setOrientation( Qt::Orientation )

$prototypeV2=void setSizes( const QList<int> & list )

$prototypeV2=void setStretchFactor( int index, int stretch )

$prototypeV2=QList<int> sizes() const

$prototypeV2=QWidget * widget( int index ) const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$beginSignals
$signal=|splitterMoved(int,int)
$endSignals

#pragma ENDDUMP

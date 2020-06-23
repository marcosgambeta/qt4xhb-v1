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

$beginClassFrom=QLayout

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QBoxLayout ( Direction dir, QWidget * parent = 0 )
$constructor=|new|QBoxLayout::Direction,QWidget *=0

$deleteMethod

$prototype=void addLayout ( QLayout * layout, int stretch = 0 )
$method=|void|addLayout|QLayout *,int=0

$prototypeV2=void addSpacerItem( QSpacerItem * spacerItem )

$prototypeV2=void addSpacing( int size )

$prototype=void addStretch ( int stretch = 0 )
$method=|void|addStretch|int=0

$prototypeV2=void addStrut( int size )

$prototype=void addWidget ( QWidget * widget, int stretch = 0, Qt::Alignment alignment = 0 )
$method=|void|addWidget|QWidget *,int=0,Qt::Alignment=0

$prototypeV2=QBoxLayout::Direction direction() const

$prototype=void insertLayout ( int index, QLayout * layout, int stretch = 0 )
$method=|void|insertLayout|int,QLayout *,int=0

$prototypeV2=void insertSpacerItem( int index, QSpacerItem * spacerItem )

$prototypeV2=void insertSpacing( int index, int size )

$prototype=void insertStretch ( int index, int stretch = 0 )
$method=|void|insertStretch|int,int=0

$prototype=void insertWidget ( int index, QWidget * widget, int stretch = 0, Qt::Alignment alignment = 0 )
$method=|void|insertWidget|int,QWidget *,int=0,Qt::Alignment=0

$prototypeV2=void setDirection( QBoxLayout::Direction direction )

$prototypeV2=void setSpacing( int spacing )

$prototypeV2=void setStretch( int index, int stretch )

$prototype=bool setStretchFactor ( QWidget * widget, int stretch )
$internalMethod=|bool|setStretchFactor,setStretchFactor1|QWidget *,int

$prototype=bool setStretchFactor ( QLayout * layout, int stretch )
$internalMethod=|bool|setStretchFactor,setStretchFactor2|QLayout *,int

/*
[1]bool setStretchFactor ( QWidget * widget, int stretch )
[2]bool setStretchFactor ( QLayout * layout, int stretch )
*/

HB_FUNC_STATIC( QBOXLAYOUT_SETSTRETCHFACTOR )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QBoxLayout_setStretchFactor1();
  }
  else if( ISNUMPAR(2) && ISQLAYOUT(1) && ISNUM(2) )
  {
    QBoxLayout_setStretchFactor2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setStretchFactor

$prototypeV2=int spacing() const

$prototypeV2=int stretch( int index ) const

$prototypeV2=virtual void addItem( QLayoutItem * item )

$prototypeV2=virtual int count() const

$prototypeV2=virtual Qt::Orientations expandingDirections() const

$prototypeV2=virtual bool hasHeightForWidth() const

$prototypeV2=virtual int heightForWidth( int w ) const

$prototypeV2=virtual void invalidate()

$prototypeV2=virtual QLayoutItem * itemAt( int index ) const

$prototypeV2=virtual QSize maximumSize() const

$prototypeV2=virtual int minimumHeightForWidth( int w ) const

$prototypeV2=virtual QSize minimumSize() const

$prototypeV2=virtual void setGeometry( const QRect & r )

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=virtual QLayoutItem * takeAt( int index )

#pragma ENDDUMP

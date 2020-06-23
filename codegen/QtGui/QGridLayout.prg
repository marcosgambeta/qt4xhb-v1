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

$prototype=QGridLayout ( QWidget * parent )
$internalConstructor=|new1|QWidget *

$prototype=QGridLayout ()
$internalConstructor=|new2|

/*
[1]QGridLayout ( QWidget * parent )
[2]QGridLayout ()
*/

HB_FUNC_STATIC( QGRIDLAYOUT_NEW )
{
  if( ISNUMPAR(1) && ISQWIDGET(1) )
  {
    QGridLayout_new1();
  }
  else if( ISNUMPAR(0) )
  {
    QGridLayout_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=void addItem ( QLayoutItem * item, int row, int column, int rowSpan = 1, int columnSpan = 1, Qt::Alignment alignment = 0 )
$method=|void|addItem|QLayoutItem *,int,int,int=1,int=1,Qt::Alignment=0

$prototype=void addLayout ( QLayout * layout, int row, int column, Qt::Alignment alignment = 0 )
$internalMethod=|void|addLayout,addLayout1|QLayout *,int,int,Qt::Alignment=0

$prototype=void addLayout ( QLayout * layout, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
$internalMethod=|void|addLayout,addLayout2|QLayout *,int,int,int,int,Qt::Alignment=0

/*
[1]void addLayout ( QLayout * layout, int row, int column, Qt::Alignment alignment = 0 )
[2]void addLayout ( QLayout * layout, int row, int column, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
*/

HB_FUNC_STATIC( QGRIDLAYOUT_ADDLAYOUT )
{
  if( ISBETWEEN(3,4) && ISQLAYOUT(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    QGridLayout_addLayout1();
  }
  else if( ISBETWEEN(5,6) && ISQLAYOUT(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && (ISNUM(6)||ISNIL(6)) )
  {
    QGridLayout_addLayout2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addLayout

$prototype=void addWidget ( QWidget * widget, int row, int column, Qt::Alignment alignment = 0 )
$internalMethod=|void|addWidget,addWidget1|QWidget *,int,int,Qt::Alignment=0

$prototype=void addWidget ( QWidget * widget, int fromRow, int fromColumn, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
$internalMethod=|void|addWidget,addWidget2|QWidget *,int,int,int,int,Qt::Alignment=0

/*
[1]void addWidget ( QWidget * widget, int row, int column, Qt::Alignment alignment = 0 )
[2]void addWidget ( QWidget * widget, int fromRow, int fromColumn, int rowSpan, int columnSpan, Qt::Alignment alignment = 0 )
*/

HB_FUNC_STATIC( QGRIDLAYOUT_ADDWIDGET )
{
  if( ISBETWEEN(3,4) && ISQWIDGET(1) && ISNUM(2) && ISNUM(3) && (ISNUM(4)||ISNIL(4)) )
  {
    QGridLayout_addWidget1();
  }
  else if( ISBETWEEN(5,6) && ISQWIDGET(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && (ISNUM(6)||ISNIL(6)) )
  {
    QGridLayout_addWidget2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addWidget

$prototypeV2=QRect cellRect( int row, int column ) const

$prototypeV2=int columnCount() const

$prototypeV2=int columnMinimumWidth( int column ) const

$prototypeV2=int columnStretch( int column ) const

$prototypeV2=void getItemPosition( int index, int * row, int * column, int * rowSpan, int * columnSpan )

$prototypeV2=int horizontalSpacing() const

$prototypeV2=QLayoutItem * itemAtPosition( int row, int column ) const

$prototypeV2=Qt::Corner originCorner() const

$prototypeV2=int rowCount() const

$prototypeV2=int rowMinimumHeight( int row ) const

$prototypeV2=int rowStretch( int row ) const

$prototypeV2=void setColumnMinimumWidth( int column, int minSize )

$prototypeV2=void setColumnStretch( int column, int stretch )

$prototypeV2=void setHorizontalSpacing( int spacing )

$prototypeV2=void setOriginCorner( Qt::Corner corner )

$prototypeV2=void setRowMinimumHeight( int row, int minSize )

$prototypeV2=void setRowStretch( int row, int stretch )

$prototypeV2=void setSpacing( int spacing )

$prototypeV2=void setVerticalSpacing( int spacing )

$prototypeV2=int spacing() const

$prototypeV2=int verticalSpacing() const

$prototypeV2=virtual int count() const

$prototypeV2=virtual Qt::Orientations expandingDirections() const

$prototypeV2=virtual bool hasHeightForWidth() const

$prototypeV2=virtual int heightForWidth( int w ) const

$prototypeV2=virtual void invalidate()

$prototypeV2=virtual QLayoutItem * itemAt( int index ) const

$prototypeV2=virtual QSize maximumSize() const

$prototypeV2=virtual int minimumHeightForWidth( int w ) const

$prototypeV2=virtual QSize minimumSize() const

$prototypeV2=virtual void setGeometry( const QRect & rect )

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=virtual QLayoutItem * takeAt( int index )

#pragma ENDDUMP

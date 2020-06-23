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

$beginClassFrom=QObject,QLayoutItem

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

%% /*
%% [1]QLayout ( QWidget * parent )
%% [2]QLayout ()
%% */

%%// HB_FUNC_STATIC( QLAYOUT_NEW )
%%// {
%%//   if( ISNUMPAR(1) && ISQWIDGET(1) )
%%//   {
%%//     HB_FUNC_EXEC( QLAYOUT_NEW1 );
%%//   }
%%//   else if( ISNUMPAR(0) )
%%//   {
%%//     HB_FUNC_EXEC( QLAYOUT_NEW2 );
%%//   }
%%//  else
%%//  {
%%//    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%//  }
%%// }

$prototypeV2=bool activate()

$prototypeV2=virtual void addItem( QLayoutItem * item ) = 0

$prototypeV2=void addWidget( QWidget * w )

$prototypeV2=QMargins contentsMargins() const

$prototypeV2=QRect contentsRect() const

$prototypeV2=virtual int count() const = 0

$prototypeV2=virtual Qt::Orientations expandingDirections() const

$prototypeV2=void getContentsMargins( int * left, int * top, int * right, int * bottom ) const

$prototypeV2=virtual int indexOf( QWidget * widget ) const

$prototypeV2=bool isEnabled() const

$prototypeV2=virtual QLayoutItem * itemAt( int index ) const = 0

$prototypeV2=virtual QSize maximumSize() const

$prototypeV2=QWidget * menuBar() const

$prototypeV2=virtual QSize minimumSize() const

$prototypeV2=QWidget * parentWidget() const

$prototypeV2=void removeItem( QLayoutItem * item )

$prototypeV2=void removeWidget( QWidget * widget )

$prototype=bool setAlignment ( QWidget * w, Qt::Alignment alignment )
$internalMethod=|bool|setAlignment,setAlignment1|QWidget *,Qt::Alignment

$prototype=void setAlignment ( Qt::Alignment alignment )
$internalMethod=|void|setAlignment,setAlignment2|Qt::Alignment

$prototype=bool setAlignment ( QLayout * l, Qt::Alignment alignment )
$internalMethod=|bool|setAlignment,setAlignment3|QLayout *,Qt::Alignment

/*
[1]bool setAlignment ( QWidget * w, Qt::Alignment alignment )
[2]void setAlignment ( Qt::Alignment alignment )
[3]bool setAlignment ( QLayout * l, Qt::Alignment alignment )
*/

HB_FUNC_STATIC( QLAYOUT_SETALIGNMENT )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISNUM(2) )
  {
    QLayout_setAlignment1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QLayout_setAlignment2();
  }
  else if( ISNUMPAR(2) && ISQLAYOUT(1) && ISNUM(2) )
  {
    QLayout_setAlignment3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setAlignment

$prototype=void setContentsMargins ( int left, int top, int right, int bottom )
$internalMethod=|void|setContentsMargins,setContentsMargins1|int,int,int,int

$prototype=void setContentsMargins ( const QMargins & margins )
$internalMethod=|void|setContentsMargins,setContentsMargins2|const QMargins &

/*
[1]void setContentsMargins ( int left, int top, int right, int bottom )
[2]void setContentsMargins ( const QMargins & margins )
*/

HB_FUNC_STATIC( QLAYOUT_SETCONTENTSMARGINS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QLayout_setContentsMargins1();
  }
  else if( ISNUMPAR(1) && ISQMARGINS(1) )
  {
    QLayout_setContentsMargins2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setContentsMargins

$prototypeV2=void setEnabled( bool enable )

$prototypeV2=void setMenuBar( QWidget * widget )

$prototypeV2=void setSizeConstraint( QLayout::SizeConstraint )

$prototypeV2=void setSpacing( int )

$prototypeV2=QLayout::SizeConstraint sizeConstraint() const

$prototypeV2=int spacing() const

$prototypeV2=virtual QLayoutItem * takeAt( int index ) = 0

$prototypeV2=void update()

$prototypeV2=virtual QRect geometry() const

$prototypeV2=virtual void invalidate()

$prototypeV2=virtual bool isEmpty() const

$prototypeV2=virtual QLayout * layout()

$prototypeV2=virtual void setGeometry( const QRect & r )

$prototypeV2=static QSize closestAcceptableSize( const QWidget * widget, const QSize & size )

#pragma ENDDUMP

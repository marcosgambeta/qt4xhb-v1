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

$prototype=QToolBox ( QWidget * parent = 0, Qt::WindowFlags f = 0 )
$constructor=|new|QWidget *=0,Qt::WindowFlags=0

$deleteMethod

$prototype=int addItem ( QWidget * widget, const QIcon & iconSet, const QString & text )
$internalMethod=|int|addItem,addItem1|QWidget *,const QIcon &,const QString &

$prototype=int addItem ( QWidget * w, const QString & text )
$internalMethod=|int|addItem,addItem2|QWidget *,const QString &

/*
[1]int addItem ( QWidget * widget, const QIcon & iconSet, const QString & text )
[2]int addItem ( QWidget * w, const QString & text )
*/

HB_FUNC_STATIC( QTOOLBOX_ADDITEM )
{
  if( ISNUMPAR(3) && ISQWIDGET(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) )
  {
    QToolBox_addItem1();
  }
  else if( ISNUMPAR(2) && ISQWIDGET(1) && ISCHAR(2) )
  {
    QToolBox_addItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addItem

$prototypeV2=int count() const

$prototypeV2=int currentIndex() const

$prototypeV2=QWidget * currentWidget() const

$prototypeV2=int indexOf( QWidget * widget ) const

$prototype=int insertItem ( int index, QWidget * widget, const QIcon & icon, const QString & text )
$internalMethod=|int|insertItem,insertItem1|int,QWidget *,const QIcon &,const QString &

$prototype=int insertItem ( int index, QWidget * widget, const QString & text )
$internalMethod=|int|insertItem,insertItem2|int,QWidget *,const QString &

/*
[1]int insertItem ( int index, QWidget * widget, const QIcon & icon, const QString & text )
[2]int insertItem ( int index, QWidget * widget, const QString & text )
*/

HB_FUNC_STATIC( QTOOLBOX_INSERTITEM )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISQWIDGET(2) && (ISQICON(3)||ISCHAR(3)) && ISCHAR(4) )
  {
    QToolBox_insertItem1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISCHAR(3) )
  {
    QToolBox_insertItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertItem

$prototypeV2=bool isItemEnabled( int index ) const

$prototypeV2=QIcon itemIcon( int index ) const

$prototypeV2=QString itemText( int index ) const

$prototypeV2=QString itemToolTip( int index ) const

$prototypeV2=void removeItem( int index )

$prototypeV2=void setItemEnabled( int index, bool enabled )

$prototypeV2=void setItemIcon( int index, const QIcon & icon )

$prototypeV2=void setItemText( int index, const QString & text )

$prototypeV2=void setItemToolTip( int index, const QString & toolTip )

$prototypeV2=QWidget * widget( int index ) const

$prototypeV2=void setCurrentIndex( int index )

$prototypeV2=void setCurrentWidget( QWidget * widget )

$beginSignals
$signal=|currentChanged(int)
$endSignals

#pragma ENDDUMP

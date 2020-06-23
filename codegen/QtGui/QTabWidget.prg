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

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTabWidget ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=int addTab ( QWidget * page, const QString & label )
$internalMethod=|int|addTab,addTab1|QWidget *,const QString &

$prototype=int addTab ( QWidget * page, const QIcon & icon, const QString & label )
$internalMethod=|int|addTab,addTab2|QWidget *,const QIcon &,const QString &

/*
[1]int addTab ( QWidget * page, const QString & label )
[2]int addTab ( QWidget * page, const QIcon & icon, const QString & label )
*/

HB_FUNC_STATIC( QTABWIDGET_ADDTAB )
{
  if( ISNUMPAR(2) && ISQWIDGET(1) && ISCHAR(2) )
  {
    QTabWidget_addTab1();
  }
  else if( ISNUMPAR(3) && ISQWIDGET(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) )
  {
    QTabWidget_addTab2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addTab

$prototypeV2=void clear()

$prototype=QWidget * cornerWidget ( Qt::Corner corner = Qt::TopRightCorner ) const
$method=|QWidget *|cornerWidget|Qt::Corner=Qt::TopRightCorner

$prototypeV2=int count() const

$prototypeV2=int currentIndex() const

$prototypeV2=QWidget * currentWidget() const

$prototypeV2=bool documentMode() const

$prototypeV2=Qt::TextElideMode elideMode() const

$prototypeV2=QSize iconSize() const

$prototypeV2=int indexOf( QWidget * w ) const

$prototype=int insertTab ( int index, QWidget * page, const QString & label )
$internalMethod=|int|insertTab,insertTab1|int,QWidget *,const QString &

$prototype=int insertTab ( int index, QWidget * page, const QIcon & icon, const QString & label )
$internalMethod=|int|insertTab,insertTab2|int,QWidget *,const QIcon &,const QString &

/*
[1]int insertTab ( int index, QWidget * page, const QString & label )
[2]int insertTab ( int index, QWidget * page, const QIcon & icon, const QString & label )
*/

HB_FUNC_STATIC( QTABWIDGET_INSERTTAB )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISQWIDGET(2) && ISCHAR(3) )
  {
    QTabWidget_insertTab1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISQWIDGET(2) && (ISQICON(3)||ISCHAR(3)) && ISCHAR(4) )
  {
    QTabWidget_insertTab2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=insertTab

$prototypeV2=bool isMovable() const

$prototypeV2=bool isTabEnabled( int index ) const

$prototypeV2=void removeTab( int index )

$prototype=void setCornerWidget ( QWidget * widget, Qt::Corner corner = Qt::TopRightCorner )
$method=|void|setCornerWidget|QWidget *,Qt::Corner=Qt::TopRightCorner

$prototypeV2=void setDocumentMode( bool set )

$prototypeV2=void setElideMode( Qt::TextElideMode )

$prototypeV2=void setIconSize( const QSize & size )

$prototypeV2=void setMovable( bool movable )

$prototypeV2=void setTabEnabled( int index, bool enable )

$prototypeV2=void setTabIcon( int index, const QIcon & icon )

$prototypeV2=void setTabPosition( QTabWidget::TabPosition )

$prototypeV2=void setTabShape( QTabWidget::TabShape s )

$prototypeV2=void setTabText( int index, const QString & label )

$prototypeV2=void setTabToolTip( int index, const QString & tip )

$prototypeV2=void setTabWhatsThis( int index, const QString & text )

$prototypeV2=void setTabsClosable( bool closeable )

$prototypeV2=void setUsesScrollButtons( bool useButtons )

$prototypeV2=QIcon tabIcon( int index ) const

$prototypeV2=QTabWidget::TabPosition tabPosition() const

$prototypeV2=QTabWidget::TabShape tabShape() const

$prototypeV2=QString tabText( int index ) const

$prototypeV2=QString tabToolTip( int index ) const

$prototypeV2=QString tabWhatsThis( int index ) const

$prototypeV2=bool tabsClosable() const

$prototypeV2=bool usesScrollButtons() const

$prototypeV2=QWidget * widget( int index ) const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void setCurrentIndex( int index )

$prototypeV2=void setCurrentWidget( QWidget * widget )

$beginSignals
$signal=|currentChanged(int)
$signal=|tabCloseRequested(int)
$endSignals

#pragma ENDDUMP

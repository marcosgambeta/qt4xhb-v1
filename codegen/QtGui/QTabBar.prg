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

#include <QtCore/QVariant>
#include <QtGui/QIcon>

$prototype=QTabBar ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=int addTab ( const QString & text )
$internalMethod=|int|addTab,addTab1|const QString &

$prototype=int addTab ( const QIcon & icon, const QString & text )
$internalMethod=|int|addTab,addTab2|const QIcon &,const QString &

/*
[1]int addTab ( const QString & text )
[2]int addTab ( const QIcon & icon, const QString & text )
*/

HB_FUNC_STATIC( QTABBAR_ADDTAB )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTabBar_addTab1();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QTabBar_addTab2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addTab

$prototypeV2=int count() const

$prototypeV2=int currentIndex() const

$prototypeV2=bool documentMode() const

$prototypeV2=bool drawBase() const

$prototypeV2=Qt::TextElideMode elideMode() const

$prototypeV2=bool expanding() const

$prototypeV2=QSize iconSize() const

$prototype=int insertTab ( int index, const QString & text )
$internalMethod=|int|insertTab,insertTab1|int,const QString &

$prototype=int insertTab ( int index, const QIcon & icon, const QString & text )
$internalMethod=|int|insertTab,insertTab2|int,const QIcon &,const QString &

/*
[1]int insertTab ( int index, const QString & text )
[2]int insertTab ( int index, const QIcon & icon, const QString & text )
*/

HB_FUNC_STATIC( QTABBAR_INSERTTAB )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(1) )
  {
    QTabBar_insertTab1();
  }
  else if( ISNUMPAR(3) && ISNUM(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) )
  {
    QTabBar_insertTab2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=inserTab

$prototypeV2=bool isMovable() const

$prototypeV2=bool isTabEnabled( int index ) const

$prototypeV2=void moveTab( int from, int to )

$prototypeV2=void removeTab( int index )

$prototypeV2=QTabBar::SelectionBehavior selectionBehaviorOnRemove() const

$prototypeV2=void setDocumentMode( bool set )

$prototypeV2=void setDrawBase( bool drawTheBase )

$prototypeV2=void setElideMode( Qt::TextElideMode )

$prototypeV2=void setExpanding( bool enabled )

$prototypeV2=void setIconSize( const QSize & size )

$prototypeV2=void setMovable( bool movable )

$prototypeV2=void setSelectionBehaviorOnRemove( QTabBar::SelectionBehavior behavior )

$prototypeV2=void setShape( QTabBar::Shape shape )

$prototypeV2=void setTabButton( int index, QTabBar::ButtonPosition position, QWidget * widget )

$prototypeV2=void setTabData( int index, const QVariant & data )

$prototypeV2=void setTabEnabled( int index, bool enabled )

$prototypeV2=void setTabIcon( int index, const QIcon & icon )

$prototypeV2=void setTabText( int index, const QString & text )

$prototypeV2=void setTabTextColor( int index, const QColor & color )

$prototypeV2=void setTabToolTip( int index, const QString & tip )

$prototypeV2=void setTabWhatsThis( int index, const QString & text )

$prototypeV2=void setTabsClosable( bool closable )

$prototypeV2=void setUsesScrollButtons( bool useButtons )

$prototypeV2=QTabBar::Shape shape() const

$prototypeV2=int tabAt( const QPoint & position ) const

$prototypeV2=QWidget * tabButton( int index, QTabBar::ButtonPosition position ) const

$prototypeV2=QVariant tabData( int index ) const

$prototypeV2=QIcon tabIcon( int index ) const

$prototypeV2=QRect tabRect( int index ) const

$prototypeV2=QString tabText( int index ) const

$prototypeV2=QColor tabTextColor( int index ) const

$prototypeV2=QString tabToolTip( int index ) const

$prototypeV2=QString tabWhatsThis( int index ) const

$prototypeV2=bool tabsClosable() const

$prototypeV2=bool usesScrollButtons() const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void setCurrentIndex( int index )

$beginSignals
$signal=|currentChanged(int)
$signal=|tabCloseRequested(int)
$signal=|tabMoved(int,int)
$endSignals

#pragma ENDDUMP

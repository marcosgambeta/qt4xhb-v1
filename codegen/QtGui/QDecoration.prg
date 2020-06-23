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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototypeV2=virtual void buildSysMenu( QWidget * widget, QMenu * menu )

$prototypeV2=void menuTriggered( QWidget * widget, QAction * action )

$prototype=virtual bool paint ( QPainter * painter, const QWidget * widget, int decorationRegion = All, DecorationState state = Normal ) = 0
$virtualMethod=|bool|paint|QPainter *,const QWidget *,int=QDecoration::All,QDecoration::DecorationState=QDecoration::Normal

$prototype=virtual QRegion region ( const QWidget * widget, const QRect & rectangle, int decorationRegion = All ) = 0
$internalVirtualMethod=|QRegion|region,region1|const QWidget *,const QRect &,int=QDecoration::All

$prototype=QRegion region ( const QWidget * widget, int decorationRegion = All )
$internalMethod=|QRegion|region,region2|const QWidget *,int=QDecoration::All

/*
[1]virtual QRegion region ( const QWidget * widget, const QRect & rectangle, int decorationRegion = All ) = 0
[2]QRegion region ( const QWidget * widget, int decorationRegion = All )
*/

HB_FUNC_STATIC( QDECORATION_REGION )
{
  if( ISBETWEEN(2,3) && ISQWIDGET(1) && ISQRECT(2) && (ISNUM(3)||ISNIL(3)) )
  {
    QDecoration_region1();
  }
  else if( ISBETWEEN(1,2) && ISQWIDGET(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QDecoration_region2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=region

$prototypeV2=virtual int regionAt( const QWidget * widget, const QPoint & point )

$prototypeV2=virtual void regionClicked( QWidget * widget, int region )

$prototypeV2=virtual void regionDoubleClicked( QWidget * widget, int region )

$prototypeV2=static void startMove( QWidget * widget )

$prototypeV2=static void startResize( QWidget * widget )

$extraMethods

#pragma ENDDUMP

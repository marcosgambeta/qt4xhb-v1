%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

   METHOD delete
   METHOD buildSysMenu
   METHOD menuTriggered
   METHOD paint
   METHOD region
   METHOD regionAt
   METHOD regionClicked
   METHOD regionDoubleClicked
   METHOD startMove
   METHOD startResize

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual void buildSysMenu ( QWidget * widget, QMenu * menu )
$virtualMethod=|void|buildSysMenu|QWidget *,QMenu *

$prototype=void menuTriggered ( QWidget * widget, QAction * action )
$method=|void|menuTriggered|QWidget *,QAction *

$prototype=virtual bool paint ( QPainter * painter, const QWidget * widget, int decorationRegion = All, DecorationState state = Normal ) = 0
$virtualMethod=|bool|paint|QPainter *,const QWidget *,int=QDecoration::All,QDecoration::DecorationState=QDecoration::Normal

$prototype=virtual QRegion region ( const QWidget * widget, const QRect & rectangle, int decorationRegion = All ) = 0
$internalVirtualMethod=|QRegion|region,region1|const QWidget *,const QRect &,int=QDecoration::All

$prototype=QRegion region ( const QWidget * widget, int decorationRegion = All )
$internalMethod=|QRegion|region,region2|const QWidget *,int=QDecoration::All

//[1]virtual QRegion region ( const QWidget * widget, const QRect & rectangle, int decorationRegion = All ) = 0
//[2]QRegion region ( const QWidget * widget, int decorationRegion = All )

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

$prototype=virtual int regionAt ( const QWidget * widget, const QPoint & point )
$virtualMethod=|int|regionAt|const QWidget *,const QPoint &

$prototype=virtual void regionClicked ( QWidget * widget, int region )
$virtualMethod=|void|regionClicked|QWidget *,int

$prototype=virtual void regionDoubleClicked ( QWidget * widget, int region )
$virtualMethod=|void|regionDoubleClicked|QWidget *,int

$prototype=static void startMove ( QWidget * widget )
$staticMethod=|void|startMove|QWidget *

$prototype=static void startResize ( QWidget * widget )
$staticMethod=|void|startResize|QWidget *

$extraMethods

#pragma ENDDUMP

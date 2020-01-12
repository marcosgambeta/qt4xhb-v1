%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

%% TODO:
%% #ifndef QT_NO_TABBAR
%% #endif // QT_NO_TABBAR

$addRequests

$beginClassFrom=QStyleOption

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionTab()
$internalConstructor=|new1|

$prototype=QStyleOptionTab(const QStyleOptionTab &other)
$internalConstructor=|new2|const QStyleOptionTab &

$prototype=QStyleOptionTab(int version) (protected)

//[1]QStyleOptionTab()
//[2]QStyleOptionTab(const QStyleOptionTab &other)
//[3]QStyleOptionTab(int version) (protected)

HB_FUNC_STATIC( QSTYLEOPTIONTAB_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionTab_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTAB(1) )
  {
    QStyleOptionTab_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=QTabBar::Shape shape
$variableMethod=|QTabBar::Shape|shape|
$variableMethod=|void|shape,setShape|QTabBar::Shape

$prototype=QString text
$variableMethod=|QString|text|
$variableMethod=|void|text,setText|QString

$prototype=QIcon icon
$variableMethod=|QIcon|icon|
$variableMethod=|void|icon,setIcon|QIcon

$prototype=int row
$variableMethod=|int|row|
$variableMethod=|void|row,setRow|int

$prototype=TabPosition position
$variableMethod=|QStyleOptionTab::TabPosition|position|
$variableMethod=|void|position,setPosition|QStyleOptionTab::TabPosition

$prototype=SelectedPosition selectedPosition
$variableMethod=|QStyleOptionTab::SelectedPosition|selectedPosition|
$variableMethod=|void|selectedPosition,setSelectedPosition|QStyleOptionTab::SelectedPosition

$prototype=CornerWidgets cornerWidgets
$variableMethod=|QStyleOptionTab::CornerWidgets|cornerWidgets|
$variableMethod=|void|cornerWidgets,setCornerWidgets|QStyleOptionTab::CornerWidgets

#pragma ENDDUMP

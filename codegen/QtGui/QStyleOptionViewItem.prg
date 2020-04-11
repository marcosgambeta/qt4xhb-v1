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

$beginClassFrom=QStyleOption

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QStyleOptionViewItem()
$internalConstructor=|new1|

$prototype=QStyleOptionViewItem(const QStyleOptionViewItem &other)
$internalConstructor=|new2|const QStyleOptionViewItem &

$prototype=QStyleOptionViewItem(int version) (protected)

/*
[1]QStyleOptionViewItem()
[2]QStyleOptionViewItem(const QStyleOptionViewItem &other) : QStyleOption(Version, Type)
[3]QStyleOptionViewItem(int version) (protected)
*/

HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionViewItem_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONVIEWITEM(1) )
  {
    QStyleOptionViewItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

%% $deleteMethod

$prototype=Qt::Alignment displayAlignment
$variableMethod=|Qt::Alignment|displayAlignment|
$variableMethod=|void|displayAlignment,setDisplayAlignment|Qt::Alignment

$prototype=Qt::Alignment decorationAlignment
$variableMethod=|Qt::Alignment|decorationAlignment|
$variableMethod=|void|decorationAlignment,setDecorationAlignment|Qt::Alignment

$prototype=Qt::TextElideMode textElideMode
$variableMethod=|Qt::TextElideMode|textElideMode|
$variableMethod=|void|textElideMode,setTextElideMode|Qt::TextElideMode

$prototype=Position decorationPosition
$variableMethod=|QStyleOptionViewItem::Position|decorationPosition|
$variableMethod=|void|decorationPosition,setDecorationPosition|QStyleOptionViewItem::Position

$prototype=QSize decorationSize
$variableMethod=|QSize|decorationSize|
$variableMethod=|void|decorationSize,setDecorationSize|QSize

$prototype=QFont font
$variableMethod=|QFont|font|
$variableMethod=|void|font,setFont|QFont

$prototype=bool showDecorationSelected
$variableMethod=|bool|showDecorationSelected|
$variableMethod=|void|showDecorationSelected,setShowDecorationSelected|bool

#pragma ENDDUMP

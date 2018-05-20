%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD new
   METHOD delete
   METHOD bottom
   METHOD isNull
   METHOD left
   METHOD right
   METHOD setBottom
   METHOD setLeft
   METHOD setRight
   METHOD setTop
   METHOD top

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QMargins ()
$internalConstructor=|new1|

$prototype=QMargins ( int left, int top, int right, int bottom )
$internalConstructor=|new2|int,int,int,int

//[1]QMargins ()
//[2]QMargins ( int left, int top, int right, int bottom )

HB_FUNC_STATIC( QMARGINS_NEW )
{
  if( ISNUMPAR(0) )
  {
    QMargins_new1();
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QMargins_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=int bottom () const
$method=|int|bottom|

$prototype=bool isNull () const
$method=|bool|isNull|

$prototype=int left () const
$method=|int|left|

$prototype=int right () const
$method=|int|right|

$prototype=void setBottom ( int bottom )
$method=|void|setBottom|int

$prototype=void setLeft ( int left )
$method=|void|setLeft|int

$prototype=void setRight ( int right )
$method=|void|setRight|int

$prototype=void setTop ( int Top )
$method=|void|setTop|int

$prototype=int top () const
$method=|int|top|

$extraMethods

#pragma ENDDUMP

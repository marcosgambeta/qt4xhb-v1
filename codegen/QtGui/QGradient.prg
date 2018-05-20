%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$beginClass

   METHOD coordinateMode
   METHOD setColorAt
   METHOD setCoordinateMode
   METHOD setSpread
   METHOD spread
   METHOD type

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=CoordinateMode coordinateMode () const
$method=|QGradient::CoordinateMode|coordinateMode|

$prototype=void setColorAt ( qreal position, const QColor & color )
$method=|void|setColorAt|qreal,const QColor &

$prototype=void setCoordinateMode ( CoordinateMode mode )
$method=|void|setCoordinateMode|QGradient::CoordinateMode

$prototype=void setSpread ( Spread method )
$method=|void|setSpread|QGradient::Spread

$prototype=Spread spread () const
$method=|QGradient::Spread|spread|

$prototype=Type type () const
HB_FUNC_STATIC( QGRADIENT_TYPE )
{
  QGradient * obj = (QGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->type () );
  }
}

$extraMethods

#pragma ENDDUMP

$header

#include "hbclass.ch"

CLASS QGradient

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD coordinateMode
   METHOD setColorAt
   METHOD setCoordinateMode
   METHOD setSpread
   METHOD spread
   METHOD type

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGradient>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
CoordinateMode coordinateMode () const
*/
$method=|QGradient::CoordinateMode|coordinateMode|

/*
void setColorAt ( qreal position, const QColor & color )
*/
$method=|void|setColorAt|qreal,const QColor &

/*
void setCoordinateMode ( CoordinateMode mode )
*/
$method=|void|setCoordinateMode|QGradient::CoordinateMode

/*
void setSpread ( Spread method )
*/
$method=|void|setSpread|QGradient::Spread

/*
Spread spread () const
*/
$method=|QGradient::Spread|spread|

/*
Type type () const
*/
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

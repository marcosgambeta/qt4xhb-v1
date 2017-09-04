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
HB_FUNC_STATIC( QGRADIENT_COORDINATEMODE )
{
  QGradient * obj = (QGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->coordinateMode () );
  }
}

/*
void setColorAt ( qreal position, const QColor & color )
*/
HB_FUNC_STATIC( QGRADIENT_SETCOLORAT )
{
  QGradient * obj = (QGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QColor par2 = ISOBJECT(2)? *(QColor *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) ) : QColor(hb_parc(2));
    obj->setColorAt ( PQREAL(1), par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setCoordinateMode ( CoordinateMode mode )
*/
HB_FUNC_STATIC( QGRADIENT_SETCOORDINATEMODE )
{
  QGradient * obj = (QGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setCoordinateMode ( (QGradient::CoordinateMode) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSpread ( Spread method )
*/
HB_FUNC_STATIC( QGRADIENT_SETSPREAD )
{
  QGradient * obj = (QGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setSpread ( (QGradient::Spread) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
Spread spread () const
*/
HB_FUNC_STATIC( QGRADIENT_SPREAD )
{
  QGradient * obj = (QGradient *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->spread () );
  }
}

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

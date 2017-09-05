$header

#include "hbclass.ch"

CLASS QGraphicsTransform INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD applyTo

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsTransform>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual void applyTo ( QMatrix4x4 * matrix ) const = 0
*/
HB_FUNC_STATIC( QGRAPHICSTRANSFORM_APPLYTO )
{
  QGraphicsTransform * obj = (QGraphicsTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMatrix4x4 * par1 = (QMatrix4x4 *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->applyTo ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

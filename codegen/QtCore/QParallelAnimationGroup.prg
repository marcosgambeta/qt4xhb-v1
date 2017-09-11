$header

#include "hbclass.ch"

CLASS QParallelAnimationGroup INHERIT QAnimationGroup

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD duration

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QParallelAnimationGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QParallelAnimationGroup ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QPARALLELANIMATIONGROUP_NEW )
{
  QParallelAnimationGroup * o = new QParallelAnimationGroup ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
virtual int duration () const
*/
HB_FUNC_STATIC( QPARALLELANIMATIONGROUP_DURATION )
{
  QParallelAnimationGroup * obj = (QParallelAnimationGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->duration () );
  }
}




#pragma ENDDUMP

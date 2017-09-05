$header

#include "hbclass.ch"


CLASS QPauseAnimation INHERIT QAbstractAnimation

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD setDuration
   METHOD duration
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPauseAnimation>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPauseAnimation ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QPAUSEANIMATION_NEW1 )
{
  QPauseAnimation * o = new QPauseAnimation ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QPauseAnimation ( int msecs, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QPAUSEANIMATION_NEW2 )
{
  QPauseAnimation * o = new QPauseAnimation ( PINT(1), OPQOBJECT(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QPauseAnimation ( QObject * parent = 0 )
//[2]QPauseAnimation ( int msecs, QObject * parent = 0 )

HB_FUNC_STATIC( QPAUSEANIMATION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QPAUSEANIMATION_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPAUSEANIMATION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void setDuration ( int msecs )
*/
HB_FUNC_STATIC( QPAUSEANIMATION_SETDURATION )
{
  QPauseAnimation * obj = (QPauseAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDuration ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int duration () const
*/
HB_FUNC_STATIC( QPAUSEANIMATION_DURATION )
{
  QPauseAnimation * obj = (QPauseAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->duration () );
  }
}




#pragma ENDDUMP

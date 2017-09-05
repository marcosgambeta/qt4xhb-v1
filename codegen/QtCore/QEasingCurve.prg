$header

#include "hbclass.ch"


CLASS QEasingCurve

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD amplitude
   METHOD overshoot
   METHOD period
   METHOD setAmplitude
   METHOD setOvershoot
   METHOD setPeriod
   METHOD setType
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

#include <QEasingCurve>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QEasingCurve ( Type type = Linear )
*/
HB_FUNC_STATIC( QEASINGCURVE_NEW1 )
{
  QEasingCurve * o = new QEasingCurve ( (QEasingCurve::Type) hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QEasingCurve ( const QEasingCurve & other )
*/
HB_FUNC_STATIC( QEASINGCURVE_NEW2 )
{
  QEasingCurve * o = new QEasingCurve ( *PQEASINGCURVE(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QEasingCurve(Type type = Linear)
//[2]QEasingCurve(const QEasingCurve & other)

HB_FUNC_STATIC( QEASINGCURVE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QEASINGCURVE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QEASINGCURVE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQEASINGCURVE(1) )
  {
    HB_FUNC_EXEC( QEASINGCURVE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
qreal amplitude () const
*/
HB_FUNC_STATIC( QEASINGCURVE_AMPLITUDE )
{
  QEasingCurve * obj = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->amplitude () );
  }
}



/*
qreal overshoot () const
*/
HB_FUNC_STATIC( QEASINGCURVE_OVERSHOOT )
{
  QEasingCurve * obj = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->overshoot () );
  }
}


/*
qreal period () const
*/
HB_FUNC_STATIC( QEASINGCURVE_PERIOD )
{
  QEasingCurve * obj = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->period () );
  }
}


/*
void setAmplitude ( qreal amplitude )
*/
HB_FUNC_STATIC( QEASINGCURVE_SETAMPLITUDE )
{
  QEasingCurve * obj = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAmplitude ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void setOvershoot ( qreal overshoot )
*/
HB_FUNC_STATIC( QEASINGCURVE_SETOVERSHOOT )
{
  QEasingCurve * obj = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setOvershoot ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPeriod ( qreal period )
*/
HB_FUNC_STATIC( QEASINGCURVE_SETPERIOD )
{
  QEasingCurve * obj = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPeriod ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setType ( Type type )
*/
HB_FUNC_STATIC( QEASINGCURVE_SETTYPE )
{
  QEasingCurve * obj = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setType ( (QEasingCurve::Type) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Type type () const
*/
HB_FUNC_STATIC( QEASINGCURVE_TYPE )
{
  QEasingCurve * obj = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->type () );
  }
}

$extraMethods

#pragma ENDDUMP

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
$constructor=|new1|QEasingCurve::Type=QEasingCurve::Linear )

/*
QEasingCurve ( const QEasingCurve & other )
*/
$constructor=|new2|const QEasingCurve &

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
$method=|qreal|amplitude|

/*
qreal overshoot () const
*/
$method=|qreal|overshoot|

/*
qreal period () const
*/
$method=|qreal|period|

/*
void setAmplitude ( qreal amplitude )
*/
$method=|void|setAmplitude|qreal

/*
void setOvershoot ( qreal overshoot )
*/
$method=|void|setOvershoot|qreal

/*
void setPeriod ( qreal period )
*/
$method=|void|setPeriod|qreal

/*
void setType ( Type type )
*/
$method=|void|setType|QEasingCurve::Type

/*
Type type () const
*/
$method=|QEasingCurve::Type|type|

$extraMethods

#pragma ENDDUMP

$header

#include "hbclass.ch"

CLASS QEasingCurve

   DATA pointer
   DATA self_destruction INIT .F.

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

$prototype=QEasingCurve ( Type type = Linear )
$internalConstructor=|new1|QEasingCurve::Type=QEasingCurve::Linear )

$prototype=QEasingCurve ( const QEasingCurve & other )
$internalConstructor=|new2|const QEasingCurve &

//[1]QEasingCurve(Type type = Linear)
//[2]QEasingCurve(const QEasingCurve & other)

HB_FUNC_STATIC( QEASINGCURVE_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QEasingCurve_new1();
  }
  else if( ISNUMPAR(1) && ISQEASINGCURVE(1) )
  {
    QEasingCurve_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=qreal amplitude () const
$method=|qreal|amplitude|

$prototype=qreal overshoot () const
$method=|qreal|overshoot|

$prototype=qreal period () const
$method=|qreal|period|

$prototype=void setAmplitude ( qreal amplitude )
$method=|void|setAmplitude|qreal

$prototype=void setOvershoot ( qreal overshoot )
$method=|void|setOvershoot|qreal

$prototype=void setPeriod ( qreal period )
$method=|void|setPeriod|qreal

$prototype=void setType ( Type type )
$method=|void|setType|QEasingCurve::Type

$prototype=Type type () const
$method=|QEasingCurve::Type|type|

$extraMethods

#pragma ENDDUMP

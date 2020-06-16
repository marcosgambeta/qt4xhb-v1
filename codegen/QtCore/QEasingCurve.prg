%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QEasingCurve ( Type type = Linear )
$internalConstructor=|new1|QEasingCurve::Type=QEasingCurve::Linear

$prototype=QEasingCurve ( const QEasingCurve & other )
$internalConstructor=|new2|const QEasingCurve &

/*
[1]QEasingCurve(Type type = Linear)
[2]QEasingCurve(const QEasingCurve & other)
*/

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
$addMethod=new

$deleteMethod

$prototypeV2=qreal amplitude() const

$prototypeV2=qreal overshoot() const

$prototypeV2=qreal period() const

$prototype=void setAmplitude ( qreal amplitude )
$method=|void|setAmplitude|qreal

$prototype=void setOvershoot ( qreal overshoot )
$method=|void|setOvershoot|qreal

$prototype=void setPeriod ( qreal period )
$method=|void|setPeriod|qreal

$prototype=void setType ( Type type )
$method=|void|setType|QEasingCurve::Type

$prototypeV2=QEasingCurve::Type type() const

$extraMethods

#pragma ENDDUMP

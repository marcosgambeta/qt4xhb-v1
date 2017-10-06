$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

CLASS QEventTransition INHERIT QAbstractTransition

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD eventSource
   METHOD eventType
   METHOD setEventSource
   METHOD setEventType

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QEventTransition>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QEventTransition(QState * sourceState = 0)
*/
$constructor=|new1|QState *=0

/*
QEventTransition(QObject * object, QEvent::Type type, QState * sourceState = 0)
*/
$constructor=|new2|QObject *,QEvent::Type,QState *=0

//[1]QEventTransition(QState * sourceState = 0)
//[2]QEventTransition(QObject * object, QEvent::Type type, QState * sourceState = 0)

HB_FUNC_STATIC( QEVENTTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QEVENTTRANSITION_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISNUM(2) && (ISQSTATE(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QEVENTTRANSITION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QObject * eventSource() const
*/
$method=|QObject *|eventSource|

/*
QEvent::Type eventType() const
*/
$method=|QEvent::Type|eventType|

/*
void setEventSource(QObject * object)
*/
$method=|void|setEventSource|QObject *

/*
void setEventType(QEvent::Type type)
*/
$method=|void|setEventType|QEvent::Type

#pragma ENDDUMP

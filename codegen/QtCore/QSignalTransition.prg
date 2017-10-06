$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QBYTEARRAY
#endif

CLASS QSignalTransition INHERIT QAbstractTransition

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD senderObject
   METHOD setSenderObject
   METHOD signal
   METHOD setSignal

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSignalTransition>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSignalTransition(QState *sourceState = 0)
*/
$constructor=|new1|QState *=0

/*
QSignalTransition(QObject *sender, const char *signal,QState *sourceState = 0)
*/
$constructor=|new2|QObject *,const char *,QState *=0

//[1]QSignalTransition(QState *sourceState = 0)
//[2]QSignalTransition(QObject *sender, const char *signal,QState *sourceState = 0)

HB_FUNC_STATIC( QSIGNALTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSIGNALTRANSITION_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQSTATE(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSIGNALTRANSITION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QObject *senderObject() const
*/
$method=|QObject *|senderObject|

/*
void setSenderObject(QObject *sender)
*/
$method=|void|setSenderObject|QObject *

/*
QByteArray signal() const
*/
$method=|QByteArray|signal|

/*
void setSignal(const QByteArray &signal)
*/
$method=|void|setSignal|const QByteArray &

#pragma ENDDUMP

$header

#include "hbclass.ch"


CLASS QElapsedTimer

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD elapsed
   METHOD hasExpired
   METHOD invalidate
   METHOD isValid
   METHOD msecsSinceReference
   METHOD msecsTo
   METHOD nsecsElapsed
   METHOD restart
   METHOD secsTo
   METHOD start
   METHOD clockType
   METHOD isMonotonic
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QElapsedTimer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QElapsedTimer()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_NEW )
{
  QElapsedTimer * o = new QElapsedTimer ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

$deleteMethod

/*
qint64 elapsed() const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_ELAPSED )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->elapsed () );
  }
}


/*
bool hasExpired(qint64 timeout) const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_HASEXPIRED )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasExpired ( PQINT64(1) ) );
  }
}


/*
void invalidate()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_INVALIDATE )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->invalidate ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_ISVALID )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
qint64 msecsSinceReference() const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_MSECSSINCEREFERENCE )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->msecsSinceReference () );
  }
}


/*
qint64 msecsTo(const QElapsedTimer & other) const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_MSECSTO )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->msecsTo ( *PQELAPSEDTIMER(1) ) );
  }
}


/*
qint64 nsecsElapsed() const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_NSECSELAPSED )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->nsecsElapsed () );
  }
}


/*
qint64 restart()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_RESTART )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->restart () );
  }
}


/*
qint64 secsTo(const QElapsedTimer & other) const
*/
HB_FUNC_STATIC( QELAPSEDTIMER_SECSTO )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->secsTo ( *PQELAPSEDTIMER(1) ) );
  }
}


/*
void start()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_START )
{
  QElapsedTimer * obj = (QElapsedTimer *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->start ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
ClockType clockType()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_CLOCKTYPE )
{
  hb_retni( (int) QElapsedTimer::clockType () );
}


/*
bool isMonotonic()
*/
HB_FUNC_STATIC( QELAPSEDTIMER_ISMONOTONIC )
{
  RBOOL( QElapsedTimer::isMonotonic () );
}

$extraMethods

#pragma ENDDUMP

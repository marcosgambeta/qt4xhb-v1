$header

#include "hbclass.ch"


CLASS QFutureWatcherBase INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD progressValue
   METHOD progressMinimum
   METHOD progressMaximum
   METHOD progressText
   METHOD isStarted
   METHOD isFinished
   METHOD isRunning
   METHOD isCanceled
   METHOD isPaused
   METHOD waitForFinished
   METHOD setPendingResultsLimit
   METHOD event
   METHOD cancel
   METHOD setPaused
   METHOD pause
   METHOD resume
   METHOD togglePaused
   METHOD onStarted
   METHOD onFinished
   METHOD onCanceled
   METHOD onPaused
   METHOD onResumed
   METHOD onResultReadyAt
   METHOD onResultsReadyAt
   METHOD onProgressRangeChanged
   METHOD onProgressValueChanged
   METHOD onProgressTextChanged
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFutureWatcherBase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QFUTUREWATCHERBASE_DELETE )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int progressValue() const
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_PROGRESSVALUE )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->progressValue () );
  }
}


/*
int progressMinimum() const
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_PROGRESSMINIMUM )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->progressMinimum () );
  }
}


/*
int progressMaximum() const
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_PROGRESSMAXIMUM )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->progressMaximum () );
  }
}


/*
QString progressText() const
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_PROGRESSTEXT )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->progressText () );
  }
}


/*
bool isStarted() const
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_ISSTARTED )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isStarted () );
  }
}


/*
bool isFinished() const
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_ISFINISHED )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isFinished () );
  }
}


/*
bool isRunning() const
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_ISRUNNING )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isRunning () );
  }
}


/*
bool isCanceled() const
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_ISCANCELED )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isCanceled () );
  }
}


/*
bool isPaused() const
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_ISPAUSED )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isPaused () );
  }
}


/*
void waitForFinished()
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_WAITFORFINISHED )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->waitForFinished ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPendingResultsLimit(int limit)
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_SETPENDINGRESULTSLIMIT )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPendingResultsLimit ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool event(QEvent *event)
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_EVENT )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->event ( PQEVENT(1) ) );
  }
}


/*
void cancel()
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_CANCEL )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cancel ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPaused(bool paused)
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_SETPAUSED )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPaused ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void pause()
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_PAUSE )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->pause ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resume()
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_RESUME )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resume ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void togglePaused()
*/
HB_FUNC_STATIC( QFUTUREWATCHERBASE_TOGGLEPAUSED )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->togglePaused ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}






#pragma ENDDUMP

/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QMUTEX
#endif

CLASS QFutureInterfaceBase

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD reportStarted
   METHOD reportFinished
   METHOD reportCanceled
   METHOD reportResultsReady
   METHOD setRunnable
   METHOD setFilterMode
   METHOD setProgressRange
   METHOD progressMinimum
   METHOD progressMaximum
   METHOD isProgressUpdateNeeded
   METHOD setProgressValue
   METHOD progressValue
   METHOD setProgressValueAndText
   METHOD progressText
   METHOD setExpectedResultCount
   METHOD expectedResultCount
   METHOD resultCount
   METHOD queryState
   METHOD isRunning
   METHOD isStarted
   METHOD isCanceled
   METHOD isFinished
   METHOD isPaused
   METHOD isThrottled
   METHOD isResultReadyAt
   METHOD cancel
   METHOD setPaused
   METHOD togglePaused
   METHOD setThrottled
   METHOD waitForFinished
   METHOD waitForNextResult
   METHOD waitForResult
   METHOD waitForResume
   METHOD mutex

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QFutureInterfaceBase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/QFutureInterfaceBase>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFutureInterfaceBase(State initialState = NoState)
*/
void QFutureInterfaceBase_new1()
{
  QFutureInterfaceBase * o = new QFutureInterfaceBase( ISNIL(1)? (QFutureInterfaceBase::State) QFutureInterfaceBase::NoState : (QFutureInterfaceBase::State) hb_parni(1) );
  _qt4xhb_returnNewObject( o, true );
}

/*
QFutureInterfaceBase(const QFutureInterfaceBase &other)
*/
void QFutureInterfaceBase_new2()
{
  QFutureInterfaceBase * o = new QFutureInterfaceBase( *PQFUTUREINTERFACEBASE(1) );
  _qt4xhb_returnNewObject( o, true );
}

//[1]QFutureInterfaceBase(State initialState = NoState)
//[2]QFutureInterfaceBase(const QFutureInterfaceBase &other)

HB_FUNC_STATIC( QFUTUREINTERFACEBASE_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    QFutureInterfaceBase_new1();
  }
  else if( ISNUMPAR(1) && ISQFUTUREINTERFACEBASE(1) )
  {
    QFutureInterfaceBase_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QFUTUREINTERFACEBASE_DELETE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

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
void reportStarted()
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_REPORTSTARTED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->reportStarted();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void reportFinished()
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_REPORTFINISHED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->reportFinished();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void reportCanceled()
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_REPORTCANCELED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->reportCanceled();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void reportResultsReady(int beginIndex, int endIndex)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_REPORTRESULTSREADY )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->reportResultsReady( PINT(1), PINT(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRunnable(QRunnable *runnable)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_SETRUNNABLE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQRUNNABLE(1) )
    {
#endif
      obj->setRunnable( PQRUNNABLE(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setFilterMode(bool enable)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_SETFILTERMODE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setFilterMode( PBOOL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setProgressRange(int minimum, int maximum)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_SETPROGRESSRANGE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
#endif
      obj->setProgressRange( PINT(1), PINT(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int progressMinimum() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_PROGRESSMINIMUM )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->progressMinimum() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int progressMaximum() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_PROGRESSMAXIMUM )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->progressMaximum() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isProgressUpdateNeeded() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_ISPROGRESSUPDATENEEDED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isProgressUpdateNeeded() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setProgressValue(int progressValue)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_SETPROGRESSVALUE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setProgressValue( PINT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int progressValue() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_PROGRESSVALUE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->progressValue() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setProgressValueAndText(int progressValue, const QString &progressText)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_SETPROGRESSVALUEANDTEXT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
    {
#endif
      obj->setProgressValueAndText( PINT(1), PQSTRING(2) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString progressText() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_PROGRESSTEXT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->progressText() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setExpectedResultCount(int resultCount)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_SETEXPECTEDRESULTCOUNT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setExpectedResultCount( PINT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int expectedResultCount()
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_EXPECTEDRESULTCOUNT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->expectedResultCount() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int resultCount() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_RESULTCOUNT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->resultCount() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool queryState(State state) const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_QUERYSTATE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->queryState( (QFutureInterfaceBase::State) hb_parni(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isRunning() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_ISRUNNING )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isRunning() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isStarted() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_ISSTARTED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isStarted() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isCanceled() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_ISCANCELED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isCanceled() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isFinished() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_ISFINISHED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFinished() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isPaused() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_ISPAUSED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isPaused() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isThrottled() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_ISTHROTTLED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isThrottled() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isResultReadyAt(int index) const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_ISRESULTREADYAT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->isResultReadyAt( PINT(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void cancel()
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_CANCEL )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->cancel();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPaused(bool paused)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_SETPAUSED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setPaused( PBOOL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void togglePaused()
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_TOGGLEPAUSED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->togglePaused();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setThrottled(bool enable)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_SETTHROTTLED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setThrottled( PBOOL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void waitForFinished()
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_WAITFORFINISHED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->waitForFinished();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool waitForNextResult()
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_WAITFORNEXTRESULT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->waitForNextResult() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void waitForResult(int resultIndex)
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_WAITFORRESULT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->waitForResult( PINT(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void waitForResume()
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_WAITFORRESUME )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->waitForResume();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QMutex *mutex() const
*/
HB_FUNC_STATIC( QFUTUREINTERFACEBASE_MUTEX )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) _qt4xhb_itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMutex * ptr = obj->mutex();
      _qt4xhb_createReturnClass( ptr, "QMUTEX", false );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QFUTUREINTERFACEBASE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QFUTUREINTERFACEBASE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QFUTUREINTERFACEBASE_NEWFROM );
}

HB_FUNC_STATIC( QFUTUREINTERFACEBASE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QFUTUREINTERFACEBASE_NEWFROM );
}

HB_FUNC_STATIC( QFUTUREINTERFACEBASE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QFUTUREINTERFACEBASE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QFutureInterfaceBase>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QFutureInterfaceBase(State initialState = NoState)
*/
HB_FUNC( QFUTUREINTERFACEBASE_NEW1 )
{
  QFutureInterfaceBase * o = NULL;
  int par1 = ISNIL(1)? (int) QFutureInterfaceBase::NoState : hb_parni(1);
  o = new QFutureInterfaceBase (  (QFutureInterfaceBase::State) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFutureInterfaceBase *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QFutureInterfaceBase(const QFutureInterfaceBase &other)
*/
HB_FUNC( QFUTUREINTERFACEBASE_NEW2 )
{
  QFutureInterfaceBase * o = NULL;
  QFutureInterfaceBase * par1 = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QFutureInterfaceBase ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QFutureInterfaceBase *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QFutureInterfaceBase(State initialState = NoState)
//[2]QFutureInterfaceBase(const QFutureInterfaceBase &other)

HB_FUNC( QFUTUREINTERFACEBASE_NEW )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QFUTUREINTERFACEBASE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQFUTUREINTERFACEBASE(1) )
  {
    HB_FUNC_EXEC( QFUTUREINTERFACEBASE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC( QFUTUREINTERFACEBASE_DELETE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QFUTUREINTERFACEBASE_REPORTSTARTED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reportStarted (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void reportFinished()
*/
HB_FUNC( QFUTUREINTERFACEBASE_REPORTFINISHED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reportFinished (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void reportCanceled()
*/
HB_FUNC( QFUTUREINTERFACEBASE_REPORTCANCELED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reportCanceled (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
void reportResultsReady(int beginIndex, int endIndex)
*/
HB_FUNC( QFUTUREINTERFACEBASE_REPORTRESULTSREADY )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->reportResultsReady ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setRunnable(QRunnable *runnable)
*/
HB_FUNC( QFUTUREINTERFACEBASE_SETRUNNABLE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRunnable * par1 = (QRunnable *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setRunnable ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setFilterMode(bool enable)
*/
HB_FUNC( QFUTUREINTERFACEBASE_SETFILTERMODE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setFilterMode ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setProgressRange(int minimum, int maximum)
*/
HB_FUNC( QFUTUREINTERFACEBASE_SETPROGRESSRANGE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->setProgressRange ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int progressMinimum() const
*/
HB_FUNC( QFUTUREINTERFACEBASE_PROGRESSMINIMUM )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->progressMinimum (  );
    hb_retni( i );
  }
}


/*
int progressMaximum() const
*/
HB_FUNC( QFUTUREINTERFACEBASE_PROGRESSMAXIMUM )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->progressMaximum (  );
    hb_retni( i );
  }
}


/*
bool isProgressUpdateNeeded() const
*/
HB_FUNC( QFUTUREINTERFACEBASE_ISPROGRESSUPDATENEEDED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isProgressUpdateNeeded (  );
    hb_retl( b );
  }
}


/*
void setProgressValue(int progressValue)
*/
HB_FUNC( QFUTUREINTERFACEBASE_SETPROGRESSVALUE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setProgressValue ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int progressValue() const
*/
HB_FUNC( QFUTUREINTERFACEBASE_PROGRESSVALUE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->progressValue (  );
    hb_retni( i );
  }
}


/*
void setProgressValueAndText(int progressValue, const QString &progressText)
*/
HB_FUNC( QFUTUREINTERFACEBASE_SETPROGRESSVALUEANDTEXT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = hb_parc(2);
    obj->setProgressValueAndText ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString progressText() const
*/
HB_FUNC( QFUTUREINTERFACEBASE_PROGRESSTEXT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->progressText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
void setExpectedResultCount(int resultCount)
*/
HB_FUNC( QFUTUREINTERFACEBASE_SETEXPECTEDRESULTCOUNT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setExpectedResultCount ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int expectedResultCount()
*/
HB_FUNC( QFUTUREINTERFACEBASE_EXPECTEDRESULTCOUNT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->expectedResultCount (  );
    hb_retni( i );
  }
}


/*
int resultCount() const
*/
HB_FUNC( QFUTUREINTERFACEBASE_RESULTCOUNT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->resultCount (  );
    hb_retni( i );
  }
}


/*
bool queryState(State state) const
*/
HB_FUNC( QFUTUREINTERFACEBASE_QUERYSTATE )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->queryState (  (QFutureInterfaceBase::State) par1 );
    hb_retl( b );
  }
}


/*
bool isRunning() const
*/
HB_FUNC( QFUTUREINTERFACEBASE_ISRUNNING )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isRunning (  );
    hb_retl( b );
  }
}


/*
bool isStarted() const
*/
HB_FUNC( QFUTUREINTERFACEBASE_ISSTARTED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isStarted (  );
    hb_retl( b );
  }
}


/*
bool isCanceled() const
*/
HB_FUNC( QFUTUREINTERFACEBASE_ISCANCELED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isCanceled (  );
    hb_retl( b );
  }
}


/*
bool isFinished() const
*/
HB_FUNC( QFUTUREINTERFACEBASE_ISFINISHED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isFinished (  );
    hb_retl( b );
  }
}


/*
bool isPaused() const
*/
HB_FUNC( QFUTUREINTERFACEBASE_ISPAUSED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isPaused (  );
    hb_retl( b );
  }
}


/*
bool isThrottled() const
*/
HB_FUNC( QFUTUREINTERFACEBASE_ISTHROTTLED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isThrottled (  );
    hb_retl( b );
  }
}


/*
bool isResultReadyAt(int index) const
*/
HB_FUNC( QFUTUREINTERFACEBASE_ISRESULTREADYAT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->isResultReadyAt ( par1 );
    hb_retl( b );
  }
}


/*
void cancel()
*/
HB_FUNC( QFUTUREINTERFACEBASE_CANCEL )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cancel (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPaused(bool paused)
*/
HB_FUNC( QFUTUREINTERFACEBASE_SETPAUSED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setPaused ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void togglePaused()
*/
HB_FUNC( QFUTUREINTERFACEBASE_TOGGLEPAUSED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->togglePaused (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setThrottled(bool enable)
*/
HB_FUNC( QFUTUREINTERFACEBASE_SETTHROTTLED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setThrottled ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void waitForFinished()
*/
HB_FUNC( QFUTUREINTERFACEBASE_WAITFORFINISHED )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->waitForFinished (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool waitForNextResult()
*/
HB_FUNC( QFUTUREINTERFACEBASE_WAITFORNEXTRESULT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->waitForNextResult (  );
    hb_retl( b );
  }
}


/*
void waitForResult(int resultIndex)
*/
HB_FUNC( QFUTUREINTERFACEBASE_WAITFORRESULT )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->waitForResult ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void waitForResume()
*/
HB_FUNC( QFUTUREINTERFACEBASE_WAITFORRESUME )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->waitForResume (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QMutex *mutex() const
*/
HB_FUNC( QFUTUREINTERFACEBASE_MUTEX )
{
  QFutureInterfaceBase * obj = (QFutureInterfaceBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMutex * ptr = obj->mutex (  );
    _qt4xhb_createReturnClass ( ptr, "QMUTEX" );  }
}








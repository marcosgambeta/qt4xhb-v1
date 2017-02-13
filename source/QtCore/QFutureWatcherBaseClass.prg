/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QFutureWatcherBase INHERIT QObject

   DATA class_id INIT Class_Id_QFutureWatcherBase
   DATA self_destruction INIT .f.

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

PROCEDURE destroyObject () CLASS QFutureWatcherBase
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QFutureWatcherBase>

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


HB_FUNC( QFUTUREWATCHERBASE_DELETE )
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
HB_FUNC( QFUTUREWATCHERBASE_PROGRESSVALUE )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->progressValue (  );
    hb_retni( i );
  }
}


/*
int progressMinimum() const
*/
HB_FUNC( QFUTUREWATCHERBASE_PROGRESSMINIMUM )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->progressMinimum (  );
    hb_retni( i );
  }
}


/*
int progressMaximum() const
*/
HB_FUNC( QFUTUREWATCHERBASE_PROGRESSMAXIMUM )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->progressMaximum (  );
    hb_retni( i );
  }
}


/*
QString progressText() const
*/
HB_FUNC( QFUTUREWATCHERBASE_PROGRESSTEXT )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->progressText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
bool isStarted() const
*/
HB_FUNC( QFUTUREWATCHERBASE_ISSTARTED )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isStarted (  );
    hb_retl( b );
  }
}


/*
bool isFinished() const
*/
HB_FUNC( QFUTUREWATCHERBASE_ISFINISHED )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isFinished (  );
    hb_retl( b );
  }
}


/*
bool isRunning() const
*/
HB_FUNC( QFUTUREWATCHERBASE_ISRUNNING )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isRunning (  );
    hb_retl( b );
  }
}


/*
bool isCanceled() const
*/
HB_FUNC( QFUTUREWATCHERBASE_ISCANCELED )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isCanceled (  );
    hb_retl( b );
  }
}


/*
bool isPaused() const
*/
HB_FUNC( QFUTUREWATCHERBASE_ISPAUSED )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isPaused (  );
    hb_retl( b );
  }
}


/*
void waitForFinished()
*/
HB_FUNC( QFUTUREWATCHERBASE_WAITFORFINISHED )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->waitForFinished (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPendingResultsLimit(int limit)
*/
HB_FUNC( QFUTUREWATCHERBASE_SETPENDINGRESULTSLIMIT )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPendingResultsLimit ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool event(QEvent *event)
*/
HB_FUNC( QFUTUREWATCHERBASE_EVENT )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QEvent * par1 = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->event ( par1 );
    hb_retl( b );
  }
}


/*
void cancel()
*/
HB_FUNC( QFUTUREWATCHERBASE_CANCEL )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->cancel (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPaused(bool paused)
*/
HB_FUNC( QFUTUREWATCHERBASE_SETPAUSED )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1 = hb_parl(1);
    obj->setPaused ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void pause()
*/
HB_FUNC( QFUTUREWATCHERBASE_PAUSE )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->pause (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resume()
*/
HB_FUNC( QFUTUREWATCHERBASE_RESUME )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resume (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void togglePaused()
*/
HB_FUNC( QFUTUREWATCHERBASE_TOGGLEPAUSED )
{
  QFutureWatcherBase * obj = (QFutureWatcherBase *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->togglePaused (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}






#pragma ENDDUMP

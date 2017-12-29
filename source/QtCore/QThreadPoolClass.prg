/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTHREADPOOL
#endif

CLASS QThreadPool INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD activeThreadCount
   METHOD expiryTimeout
   METHOD maxThreadCount
   METHOD releaseThread
   METHOD reserveThread
   METHOD setExpiryTimeout
   METHOD setMaxThreadCount
   METHOD start
   METHOD tryStart
   METHOD waitForDone1
   METHOD waitForDone2
   METHOD waitForDone
   METHOD globalInstance
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QThreadPool
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QThreadPool>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QThreadPool ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QTHREADPOOL_NEW )
{
  QThreadPool * o = new QThreadPool ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QTHREADPOOL_DELETE )
{
  QThreadPool * obj = (QThreadPool *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
int activeThreadCount () const
*/
HB_FUNC_STATIC( QTHREADPOOL_ACTIVETHREADCOUNT )
{
  QThreadPool * obj = (QThreadPool *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->activeThreadCount () );
  }
}

/*
int expiryTimeout () const
*/
HB_FUNC_STATIC( QTHREADPOOL_EXPIRYTIMEOUT )
{
  QThreadPool * obj = (QThreadPool *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->expiryTimeout () );
  }
}

/*
int maxThreadCount () const
*/
HB_FUNC_STATIC( QTHREADPOOL_MAXTHREADCOUNT )
{
  QThreadPool * obj = (QThreadPool *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->maxThreadCount () );
  }
}

/*
void releaseThread ()
*/
HB_FUNC_STATIC( QTHREADPOOL_RELEASETHREAD )
{
  QThreadPool * obj = (QThreadPool *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->releaseThread ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void reserveThread ()
*/
HB_FUNC_STATIC( QTHREADPOOL_RESERVETHREAD )
{
  QThreadPool * obj = (QThreadPool *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reserveThread ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setExpiryTimeout ( int expiryTimeout )
*/
HB_FUNC_STATIC( QTHREADPOOL_SETEXPIRYTIMEOUT )
{
  QThreadPool * obj = (QThreadPool *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setExpiryTimeout ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMaxThreadCount ( int maxThreadCount )
*/
HB_FUNC_STATIC( QTHREADPOOL_SETMAXTHREADCOUNT )
{
  QThreadPool * obj = (QThreadPool *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMaxThreadCount ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void start ( QRunnable * runnable, int priority = 0 )
*/
HB_FUNC_STATIC( QTHREADPOOL_START )
{
  QThreadPool * obj = (QThreadPool *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRunnable * par1 = (QRunnable *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->start ( par1, OPINT(2,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool tryStart ( QRunnable * runnable )
*/
HB_FUNC_STATIC( QTHREADPOOL_TRYSTART )
{
  QThreadPool * obj = (QThreadPool *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRunnable * par1 = (QRunnable *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->tryStart ( par1 ) );
  }
}

/*
void waitForDone ()
*/
HB_FUNC_STATIC( QTHREADPOOL_WAITFORDONE1 )
{
  QThreadPool * obj = (QThreadPool *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->waitForDone ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool waitForDone ( int msecs )
*/
HB_FUNC_STATIC( QTHREADPOOL_WAITFORDONE2 )
{
  QThreadPool * obj = (QThreadPool *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->waitForDone ( PINT(1) ) );
  }
}

//[1]void waitForDone ()
//[2]bool waitForDone ( int msecs )

HB_FUNC_STATIC( QTHREADPOOL_WAITFORDONE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTHREADPOOL_WAITFORDONE1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTHREADPOOL_WAITFORDONE2 );
  }
}

/*
QThreadPool * globalInstance ()
*/
HB_FUNC_STATIC( QTHREADPOOL_GLOBALINSTANCE )
{
  QThreadPool * ptr = QThreadPool::globalInstance ();
  _qt4xhb_createReturnClass ( ptr, "QTHREADPOOL" );
}

#pragma ENDDUMP

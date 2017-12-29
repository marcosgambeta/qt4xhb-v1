/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTHREAD
#endif

CLASS QThread INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD exit
   METHOD isFinished
   METHOD isRunning
   METHOD priority
   METHOD setPriority
   METHOD setStackSize
   METHOD stackSize
   METHOD event
   METHOD quit
   METHOD start
   METHOD terminate
   METHOD currentThread
   METHOD idealThreadCount
   METHOD yieldCurrentThread
   METHOD onFinished
   METHOD onStarted
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QThread
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QThread>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QThread(QObject * parent = 0)
*/
HB_FUNC_STATIC( QTHREAD_NEW )
{
  QThread * o = new QThread ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QTHREAD_DELETE )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void exit(int returnCode = 0)
*/
HB_FUNC_STATIC( QTHREAD_EXIT )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->exit ( OPINT(1,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isFinished() const
*/
HB_FUNC_STATIC( QTHREAD_ISFINISHED )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isFinished () );
  }
}

/*
bool isRunning() const
*/
HB_FUNC_STATIC( QTHREAD_ISRUNNING )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isRunning () );
  }
}

/*
Priority priority() const
*/
HB_FUNC_STATIC( QTHREAD_PRIORITY )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->priority () );
  }
}

/*
void setPriority(Priority priority)
*/
HB_FUNC_STATIC( QTHREAD_SETPRIORITY )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPriority ( (QThread::Priority) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStackSize(uint stackSize)
*/
HB_FUNC_STATIC( QTHREAD_SETSTACKSIZE )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStackSize ( PUINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
uint stackSize() const
*/
HB_FUNC_STATIC( QTHREAD_STACKSIZE )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (uint) obj->stackSize () );
  }
}

/*
virtual bool event(QEvent * event)
*/
HB_FUNC_STATIC( QTHREAD_EVENT )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->event ( PQEVENT(1) ) );
  }
}

/*
void quit()
*/
HB_FUNC_STATIC( QTHREAD_QUIT )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->quit ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void start(Priority priority = InheritPriority)
*/
HB_FUNC_STATIC( QTHREAD_START )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->start ( ISNIL(1)? QThread::InheritPriority : (QThread::Priority) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void terminate()
*/
HB_FUNC_STATIC( QTHREAD_TERMINATE )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->terminate ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QThread * currentThread()
*/
HB_FUNC_STATIC( QTHREAD_CURRENTTHREAD )
{
  QThread * ptr = QThread::currentThread ();
  _qt4xhb_createReturnClass ( ptr, "QTHREAD" );
}

/*
int idealThreadCount()
*/
HB_FUNC_STATIC( QTHREAD_IDEALTHREADCOUNT )
{
  RINT( QThread::idealThreadCount () );
}

/*
void yieldCurrentThread()
*/
HB_FUNC_STATIC( QTHREAD_YIELDCURRENTTHREAD )
{
  QThread::yieldCurrentThread ();
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

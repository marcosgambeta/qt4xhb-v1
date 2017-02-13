/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTHREAD

CLASS QThread INHERIT QObject

   DATA class_id INIT Class_Id_QThread
   DATA self_destruction INIT .f.

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

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QThread>

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
QThread(QObject * parent = 0)
*/
HB_FUNC( QTHREAD_NEW )
{
  QThread * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QThread ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QThread *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QTHREAD_DELETE )
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
HB_FUNC( QTHREAD_EXIT )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? 0 : hb_parni(1);
    obj->exit ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isFinished() const
*/
HB_FUNC( QTHREAD_ISFINISHED )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isFinished (  );
    hb_retl( b );
  }
}


/*
bool isRunning() const
*/
HB_FUNC( QTHREAD_ISRUNNING )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isRunning (  );
    hb_retl( b );
  }
}


/*
Priority priority() const
*/
HB_FUNC( QTHREAD_PRIORITY )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->priority (  );
    hb_retni( i );
  }
}



/*
void setPriority(Priority priority)
*/
HB_FUNC( QTHREAD_SETPRIORITY )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setPriority (  (QThread::Priority) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setStackSize(uint stackSize)
*/
HB_FUNC( QTHREAD_SETSTACKSIZE )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    uint par1 = hb_parni(1);
    obj->setStackSize ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
uint stackSize() const
*/
HB_FUNC( QTHREAD_STACKSIZE )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    uint i = obj->stackSize (  );
    hb_retni( i );
  }
}



/*
virtual bool event(QEvent * event)
*/
HB_FUNC( QTHREAD_EVENT )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QEvent * par1 = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->event ( par1 );
    hb_retl( b );
  }
}


/*
void quit()
*/
HB_FUNC( QTHREAD_QUIT )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->quit (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void start(Priority priority = InheritPriority)
*/
HB_FUNC( QTHREAD_START )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QThread::InheritPriority : hb_parni(1);
    obj->start (  (QThread::Priority) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void terminate()
*/
HB_FUNC( QTHREAD_TERMINATE )
{
  QThread * obj = (QThread *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->terminate (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QThread * currentThread()
*/
HB_FUNC( QTHREAD_CURRENTTHREAD )
{
  QThread * ptr = QThread::currentThread (  );
  _qt4xhb_createReturnClass ( ptr, "QTHREAD" );}



/*
int idealThreadCount()
*/
HB_FUNC( QTHREAD_IDEALTHREADCOUNT )
{
  int i = QThread::idealThreadCount (  );
  hb_retni( i );
}





/*
void yieldCurrentThread()
*/
HB_FUNC( QTHREAD_YIELDCURRENTTHREAD )
{
  QThread::yieldCurrentThread (  );
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTHREADPOOL

CLASS QThreadPool INHERIT QObject

   DATA class_id INIT Class_Id_QThreadPool
   DATA self_destruction INIT .f.

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

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QThreadPool>

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
QThreadPool ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QTHREADPOOL_NEW )
{
  QThreadPool * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QThreadPool ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QThreadPool *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    int i = obj->activeThreadCount (  );
    hb_retni( i );
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
    int i = obj->expiryTimeout (  );
    hb_retni( i );
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
    int i = obj->maxThreadCount (  );
    hb_retni( i );
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
    obj->releaseThread (  );
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
    obj->reserveThread (  );
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
    int par1 = hb_parni(1);
    obj->setExpiryTimeout ( par1 );
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
    int par1 = hb_parni(1);
    obj->setMaxThreadCount ( par1 );
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
    int par2 = ISNIL(2)? 0 : hb_parni(2);
    obj->start ( par1, par2 );
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
    hb_retl( obj->tryStart ( par1 ) );
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
    obj->waitForDone (  );
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
    int par1 = hb_parni(1);
    hb_retl( obj->waitForDone ( par1 ) );
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
  QThreadPool * ptr = QThreadPool::globalInstance (  );
  _qt4xhb_createReturnClass ( ptr, "QTHREADPOOL" );
}




#pragma ENDDUMP

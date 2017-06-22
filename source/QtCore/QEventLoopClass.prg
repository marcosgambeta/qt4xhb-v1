/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"


CLASS QEventLoop INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD exec
   METHOD exit
   METHOD isRunning
   METHOD processEvents1
   METHOD processEvents2
   METHOD processEvents
   METHOD wakeUp
   METHOD quit
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QEventLoop
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QEventLoop>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QEventLoop ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QEVENTLOOP_NEW )
{
  QEventLoop * o = new QEventLoop ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QEVENTLOOP_DELETE )
{
  QEventLoop * obj = (QEventLoop *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int exec ( ProcessEventsFlags flags = AllEvents )
*/
HB_FUNC_STATIC( QEVENTLOOP_EXEC )
{
  QEventLoop * obj = (QEventLoop *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->exec ( ISNIL(1)? QEventLoop::AllEvents : (QEventLoop::ProcessEventsFlags) hb_parni(1) ) );
  }
}


/*
void exit ( int returnCode = 0 )
*/
HB_FUNC_STATIC( QEVENTLOOP_EXIT )
{
  QEventLoop * obj = (QEventLoop *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->exit ( OPINT(1,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isRunning () const
*/
HB_FUNC_STATIC( QEVENTLOOP_ISRUNNING )
{
  QEventLoop * obj = (QEventLoop *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isRunning () );
  }
}


/*
bool processEvents ( ProcessEventsFlags flags = AllEvents )
*/
HB_FUNC_STATIC( QEVENTLOOP_PROCESSEVENTS1 )
{
  QEventLoop * obj = (QEventLoop *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->processEvents ( ISNIL(1)? QEventLoop::AllEvents : (QEventLoop::ProcessEventsFlags) hb_parni(1) ) );
  }
}


/*
void processEvents ( ProcessEventsFlags flags, int maxTime )
*/
HB_FUNC_STATIC( QEVENTLOOP_PROCESSEVENTS2 )
{
  QEventLoop * obj = (QEventLoop *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->processEvents (  (QEventLoop::ProcessEventsFlags) hb_parni(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]bool processEvents ( ProcessEventsFlags flags = AllEvents )
//[2]void processEvents ( ProcessEventsFlags flags, int maxTime )

HB_FUNC_STATIC( QEVENTLOOP_PROCESSEVENTS )
{
  if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QEVENTLOOP_PROCESSEVENTS1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QEVENTLOOP_PROCESSEVENTS2 );
  }
}

/*
void wakeUp ()
*/
HB_FUNC_STATIC( QEVENTLOOP_WAKEUP )
{
  QEventLoop * obj = (QEventLoop *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->wakeUp ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void quit ()
*/
HB_FUNC_STATIC( QEVENTLOOP_QUIT )
{
  QEventLoop * obj = (QEventLoop *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->quit ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

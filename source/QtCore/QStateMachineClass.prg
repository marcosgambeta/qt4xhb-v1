/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTANIMATION
#endif

CLASS QStateMachine INHERIT QState

   METHOD new
   METHOD delete
   METHOD addDefaultAnimation
   METHOD addState
   METHOD cancelDelayedEvent
   METHOD clearError
   METHOD defaultAnimations
   METHOD error
   METHOD errorString
   METHOD globalRestorePolicy
   METHOD isAnimated
   METHOD isRunning
   METHOD postDelayedEvent
   METHOD postEvent
   METHOD removeDefaultAnimation
   METHOD removeState
   METHOD setAnimated
   METHOD setGlobalRestorePolicy
   METHOD eventFilter
   METHOD start
   METHOD stop

   METHOD onStarted
   METHOD onStopped

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStateMachine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QStateMachine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStateMachine ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSTATEMACHINE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QStateMachine * o = new QStateMachine ( OPQOBJECT(1,0) );
    _qt4xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTATEMACHINE_DELETE )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addDefaultAnimation ( QAbstractAnimation * animation )
*/
HB_FUNC_STATIC( QSTATEMACHINE_ADDDEFAULTANIMATION )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTANIMATION(1) )
    {
      obj->addDefaultAnimation ( PQABSTRACTANIMATION(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addState ( QAbstractState * state )
*/
HB_FUNC_STATIC( QSTATEMACHINE_ADDSTATE )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTSTATE(1) )
    {
      obj->addState ( PQABSTRACTSTATE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool cancelDelayedEvent ( int id )
*/
HB_FUNC_STATIC( QSTATEMACHINE_CANCELDELAYEDEVENT )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      RBOOL( obj->cancelDelayedEvent ( PINT(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void clearError ()
*/
HB_FUNC_STATIC( QSTATEMACHINE_CLEARERROR )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->clearError ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QAbstractAnimation *> defaultAnimations () const
*/
HB_FUNC_STATIC( QSTATEMACHINE_DEFAULTANIMATIONS )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QAbstractAnimation *> list = obj->defaultAnimations ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QABSTRACTANIMATION" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QAbstractAnimation *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
Error error () const
*/
HB_FUNC_STATIC( QSTATEMACHINE_ERROR )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->error () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString errorString () const
*/
HB_FUNC_STATIC( QSTATEMACHINE_ERRORSTRING )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->errorString () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStateMachine::RestorePolicy globalRestorePolicy () const
*/
HB_FUNC_STATIC( QSTATEMACHINE_GLOBALRESTOREPOLICY )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->globalRestorePolicy () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isAnimated () const
*/
HB_FUNC_STATIC( QSTATEMACHINE_ISANIMATED )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isAnimated () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool isRunning () const
*/
HB_FUNC_STATIC( QSTATEMACHINE_ISRUNNING )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->isRunning () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int postDelayedEvent ( QEvent * event, int delay )
*/
HB_FUNC_STATIC( QSTATEMACHINE_POSTDELAYEDEVENT )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISQEVENT(1) && ISNUM(2) )
    {
      RINT( obj->postDelayedEvent ( PQEVENT(1), PINT(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void postEvent ( QEvent * event, EventPriority priority = NormalPriority )
*/
HB_FUNC_STATIC( QSTATEMACHINE_POSTEVENT )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(1,2) && ISQEVENT(1) && ISOPTNUM(2) )
    {
      obj->postEvent ( PQEVENT(1), ISNIL(2)? (QStateMachine::EventPriority) QStateMachine::NormalPriority : (QStateMachine::EventPriority) hb_parni(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeDefaultAnimation ( QAbstractAnimation * animation )
*/
HB_FUNC_STATIC( QSTATEMACHINE_REMOVEDEFAULTANIMATION )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTANIMATION(1) )
    {
      obj->removeDefaultAnimation ( PQABSTRACTANIMATION(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeState ( QAbstractState * state )
*/
HB_FUNC_STATIC( QSTATEMACHINE_REMOVESTATE )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQABSTRACTSTATE(1) )
    {
      obj->removeState ( PQABSTRACTSTATE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAnimated ( bool enabled )
*/
HB_FUNC_STATIC( QSTATEMACHINE_SETANIMATED )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setAnimated ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setGlobalRestorePolicy ( QStateMachine::RestorePolicy restorePolicy )
*/
HB_FUNC_STATIC( QSTATEMACHINE_SETGLOBALRESTOREPOLICY )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setGlobalRestorePolicy ( (QStateMachine::RestorePolicy) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool eventFilter ( QObject * watched, QEvent * event )
*/
HB_FUNC_STATIC( QSTATEMACHINE_EVENTFILTER )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISQOBJECT(1) && ISQEVENT(2) )
    {
      RBOOL( obj->eventFilter ( PQOBJECT(1), PQEVENT(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void start ()
*/
HB_FUNC_STATIC( QSTATEMACHINE_START )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->start ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void stop ()
*/
HB_FUNC_STATIC( QSTATEMACHINE_STOP )
{
  QStateMachine * obj = (QStateMachine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->stop ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

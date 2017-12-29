/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTANIMATION
#endif

CLASS QStateMachine INHERIT QState

   DATA self_destruction INIT .F.

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
  QStateMachine * o = new QStateMachine ( OPQOBJECT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
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
    QAbstractAnimation * par1 = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addDefaultAnimation ( par1 );
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
    QAbstractState * par1 = (QAbstractState *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addState ( par1 );
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
    RBOOL( obj->cancelDelayedEvent ( PINT(1) ) );
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
    obj->clearError ();
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
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QABSTRACTANIMATION" );
    #else
    pDynSym = hb_dynsymFindName( "QABSTRACTANIMATION" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
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
    hb_retni( (int) obj->error () );
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
    hb_retni( (int) obj->globalRestorePolicy () );
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
    RBOOL( obj->isAnimated () );
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
    RBOOL( obj->isRunning () );
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
    RINT( obj->postDelayedEvent ( PQEVENT(1), PINT(2) ) );
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
    int par2 = ISNIL(2)? (int) QStateMachine::NormalPriority : hb_parni(2);
    obj->postEvent ( PQEVENT(1), (QStateMachine::EventPriority) par2 );
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
    QAbstractAnimation * par1 = (QAbstractAnimation *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeDefaultAnimation ( par1 );
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
    QAbstractState * par1 = (QAbstractState *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeState ( par1 );
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
    obj->setAnimated ( PBOOL(1) );
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
    obj->setGlobalRestorePolicy ( (QStateMachine::RestorePolicy) hb_parni(1) );
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
    RBOOL( obj->eventFilter ( PQOBJECT(1), PQEVENT(2) ) );
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
    obj->start ();
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
    obj->stop ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

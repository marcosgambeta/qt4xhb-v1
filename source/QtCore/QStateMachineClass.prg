/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QABSTRACTANIMATION

CLASS QStateMachine INHERIT QState

   DATA class_id INIT Class_Id_QStateMachine
   DATA self_destruction INIT .f.

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
QStateMachine ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QSTATEMACHINE_NEW )
{
  QStateMachine * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QStateMachine ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QStateMachine *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    hb_retl( obj->cancelDelayedEvent ( hb_parni(1) ) );
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
    obj->clearError (  );
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
    QList<QAbstractAnimation *> list = obj->defaultAnimations (  );
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
    hb_retni( (int) obj->error (  ) );
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
    QString str1 = obj->errorString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
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
    hb_retni( (int) obj->globalRestorePolicy (  ) );
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
    hb_retl( obj->isAnimated (  ) );
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
    hb_retl( obj->isRunning (  ) );
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
    QEvent * par1 = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retni( obj->postDelayedEvent ( par1, hb_parni(2) ) );
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
    QEvent * par1 = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) QStateMachine::NormalPriority : hb_parni(2);
    obj->postEvent ( par1,  (QStateMachine::EventPriority) par2 );
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
    bool par1 = hb_parl(1);
    obj->setAnimated ( par1 );
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
    obj->setGlobalRestorePolicy (  (QStateMachine::RestorePolicy) hb_parni(1) );
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
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QEvent * par2 = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->eventFilter ( par1, par2 ) );
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
    obj->start (  );
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
    obj->stop (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP

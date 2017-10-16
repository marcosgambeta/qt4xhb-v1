$header

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

$destructor

#pragma BEGINDUMP

#include <QStateMachine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStateMachine ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
void addDefaultAnimation ( QAbstractAnimation * animation )
*/
$method=|void|addDefaultAnimation|QAbstractAnimation *

/*
void addState ( QAbstractState * state )
*/
$method=|void|addState|QAbstractState *

/*
bool cancelDelayedEvent ( int id )
*/
$method=|bool|cancelDelayedEvent|int

/*
void clearError ()
*/
$method=|void|clearError|

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
$method=|QStateMachine::Error|error|

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
QStateMachine::RestorePolicy globalRestorePolicy () const
*/
$method=|QStateMachine::RestorePolicy|globalRestorePolicy|

/*
bool isAnimated () const
*/
$method=|bool|isAnimated|

/*
bool isRunning () const
*/
$method=|bool|isRunning|

/*
int postDelayedEvent ( QEvent * event, int delay )
*/
$method=|int|postDelayedEvent|QEvent *,int

/*
void postEvent ( QEvent * event, EventPriority priority = NormalPriority )
*/
$method=|void|postEvent|QEvent *,QStateMachine::EventPriority=QStateMachine::NormalPriority

/*
void removeDefaultAnimation ( QAbstractAnimation * animation )
*/
$method=|void|removeDefaultAnimation|QAbstractAnimation *

/*
void removeState ( QAbstractState * state )
*/
$method=|void|removeState|QAbstractState *

/*
void setAnimated ( bool enabled )
*/
$method=|void|setAnimated|bool

/*
void setGlobalRestorePolicy ( QStateMachine::RestorePolicy restorePolicy )
*/
$method=|void|setGlobalRestorePolicy|QStateMachine::RestorePolicy

/*
virtual bool eventFilter ( QObject * watched, QEvent * event )
*/
$virtualMethod=|bool|eventFilter|QObject *,QEvent *

/*
void start ()
*/
$method=|void|start|

/*
void stop ()
*/
$method=|void|stop|

#pragma ENDDUMP

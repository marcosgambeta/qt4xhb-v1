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

$prototype=QStateMachine ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void addDefaultAnimation ( QAbstractAnimation * animation )
$method=|void|addDefaultAnimation|QAbstractAnimation *

$prototype=void addState ( QAbstractState * state )
$method=|void|addState|QAbstractState *

$prototype=bool cancelDelayedEvent ( int id )
$method=|bool|cancelDelayedEvent|int

$prototype=void clearError ()
$method=|void|clearError|

$prototype=QList<QAbstractAnimation *> defaultAnimations () const
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

$prototype=Error error () const
$method=|QStateMachine::Error|error|

$prototype=QString errorString () const
$method=|QString|errorString|

$prototype=QStateMachine::RestorePolicy globalRestorePolicy () const
$method=|QStateMachine::RestorePolicy|globalRestorePolicy|

$prototype=bool isAnimated () const
$method=|bool|isAnimated|

$prototype=bool isRunning () const
$method=|bool|isRunning|

$prototype=int postDelayedEvent ( QEvent * event, int delay )
$method=|int|postDelayedEvent|QEvent *,int

$prototype=void postEvent ( QEvent * event, EventPriority priority = NormalPriority )
$method=|void|postEvent|QEvent *,QStateMachine::EventPriority=QStateMachine::NormalPriority

$prototype=void removeDefaultAnimation ( QAbstractAnimation * animation )
$method=|void|removeDefaultAnimation|QAbstractAnimation *

$prototype=void removeState ( QAbstractState * state )
$method=|void|removeState|QAbstractState *

$prototype=void setAnimated ( bool enabled )
$method=|void|setAnimated|bool

$prototype=void setGlobalRestorePolicy ( QStateMachine::RestorePolicy restorePolicy )
$method=|void|setGlobalRestorePolicy|QStateMachine::RestorePolicy

$prototype=virtual bool eventFilter ( QObject * watched, QEvent * event )
$virtualMethod=|bool|eventFilter|QObject *,QEvent *

$prototype=void start ()
$method=|void|start|

$prototype=void stop ()
$method=|void|stop|

#pragma ENDDUMP

%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTANIMATION
REQUEST QSTATEMACHINE
REQUEST QSTATE
REQUEST QABSTRACTSTATE
#endif

CLASS QAbstractTransition INHERIT QObject

   METHOD delete
   METHOD addAnimation
   METHOD animations
   METHOD machine
   METHOD removeAnimation
   METHOD setTargetState
   METHOD setTargetStates
   METHOD sourceState
   METHOD targetState
   METHOD targetStates

   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAbstractTransition>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStateMachine>
#include <QState>
#include <QAbstractState>

$deleteMethod

$prototype=void addAnimation ( QAbstractAnimation * animation )
$method=|void|addAnimation|QAbstractAnimation *

$prototype=QList<QAbstractAnimation *> animations () const
HB_FUNC_STATIC( QABSTRACTTRANSITION_ANIMATIONS )
{
  QAbstractTransition * obj = (QAbstractTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QAbstractAnimation *> list = obj->animations ();
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

$prototype=QStateMachine * machine () const
$method=|QStateMachine *|machine|

$prototype=void removeAnimation ( QAbstractAnimation * animation )
$method=|void|removeAnimation|QAbstractAnimation *

$prototype=void setTargetState ( QAbstractState * target )
$method=|void|setTargetState|QAbstractState *

$prototype=void setTargetStates ( const QList<QAbstractState *> & targets )
HB_FUNC_STATIC( QABSTRACTTRANSITION_SETTARGETSTATES )
{
  QAbstractTransition * obj = (QAbstractTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QAbstractState *> par1;
    PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
    int i1;
    int nLen1 = hb_arrayLen(aList1);
    for (i1=0;i1<nLen1;i1++)
    {
      par1 << (QAbstractState *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
    }
    obj->setTargetStates ( par1 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

$prototype=QState * sourceState () const
$method=|QState *|sourceState|

$prototype=QAbstractState * targetState () const
$method=|QAbstractState *|targetState|

$prototype=QList<QAbstractState *> targetStates () const
HB_FUNC_STATIC( QABSTRACTTRANSITION_TARGETSTATES )
{
  QAbstractTransition * obj = (QAbstractTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QAbstractState *> list = obj->targetStates ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QABSTRACTSTATE" );
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
        hb_itemPutPtr( pItem, (QAbstractState *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

#pragma ENDDUMP

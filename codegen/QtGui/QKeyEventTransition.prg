%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QEventTransition

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QKeyEventTransition ( QState * sourceState = 0 )
$internalConstructor=|new1|QState *=0

$prototype=QKeyEventTransition ( QObject * object, QEvent::Type type, int key, QState * sourceState = 0 )
$internalConstructor=|new2|QObject *,QEvent::Type,int,QState *=0

/*
[1]QKeyEventTransition ( QState * sourceState = 0 )
[2]QKeyEventTransition ( QObject * object, QEvent::Type type, int key, QState * sourceState = 0 )
*/

HB_FUNC_STATIC( QKEYEVENTTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QKeyEventTransition_new1();
  }
  else if( ISBETWEEN(3,4) && ISQOBJECT(1) && ISNUM(2) && ISNUM(3) && (ISQSTATE(4)||ISNIL(4)) )
  {
    QKeyEventTransition_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=int key() const

$prototypeV2=Qt::KeyboardModifiers modifierMask() const

$prototypeV2=void setKey( int key )

$prototypeV2=void setModifierMask( Qt::KeyboardModifiers modifierMask )

#pragma ENDDUMP

$header

#include "hbclass.ch"

CLASS QKeyEventTransition INHERIT QEventTransition

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD key
   METHOD modifierMask
   METHOD setKey
   METHOD setModifierMask

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QKeyEventTransition>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QKeyEventTransition ( QState * sourceState = 0 )
*/
HB_FUNC_STATIC( QKEYEVENTTRANSITION_NEW1 )
{
  QKeyEventTransition * o = new QKeyEventTransition ( OPQSTATE(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QKeyEventTransition ( QObject * object, QEvent::Type type, int key, QState * sourceState = 0 )
*/
HB_FUNC_STATIC( QKEYEVENTTRANSITION_NEW2 )
{
  QKeyEventTransition * o = new QKeyEventTransition ( PQOBJECT(1), (QEvent::Type) hb_parni(2), PINT(3), OPQSTATE(4,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QKeyEventTransition ( QState * sourceState = 0 )
//[2]QKeyEventTransition ( QObject * object, QEvent::Type type, int key, QState * sourceState = 0 )

HB_FUNC_STATIC( QKEYEVENTTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QKEYEVENTTRANSITION_NEW1 );
  }
  else if( ISBETWEEN(3,4) && ISQOBJECT(1) && ISNUM(2) && ISNUM(3) && (ISQSTATE(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QKEYEVENTTRANSITION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int key () const
*/
$method=|int|key|

/*
Qt::KeyboardModifiers modifierMask () const
*/
$method=|Qt::KeyboardModifiers|modifierMask|

/*
void setKey ( int key )
*/
$method=|void|setKey|int

/*
void setModifierMask ( Qt::KeyboardModifiers modifierMask )
*/
$method=|void|setModifierMask|Qt::KeyboardModifiers

#pragma ENDDUMP

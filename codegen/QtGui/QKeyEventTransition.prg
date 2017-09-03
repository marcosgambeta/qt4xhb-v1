$header

#include "hbclass.ch"

CLASS QKeyEventTransition INHERIT QEventTransition

   DATA self_destruction INIT .F.

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

PROCEDURE destroyObject () CLASS QKeyEventTransition
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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

HB_FUNC_STATIC( QKEYEVENTTRANSITION_DELETE )
{
  QKeyEventTransition * obj = (QKeyEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
int key () const
*/
HB_FUNC_STATIC( QKEYEVENTTRANSITION_KEY )
{
  QKeyEventTransition * obj = (QKeyEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->key () );
  }
}

/*
Qt::KeyboardModifiers modifierMask () const
*/
HB_FUNC_STATIC( QKEYEVENTTRANSITION_MODIFIERMASK )
{
  QKeyEventTransition * obj = (QKeyEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->modifierMask () );
  }
}

/*
void setKey ( int key )
*/
HB_FUNC_STATIC( QKEYEVENTTRANSITION_SETKEY )
{
  QKeyEventTransition * obj = (QKeyEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setKey ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setModifierMask ( Qt::KeyboardModifiers modifierMask )
*/
HB_FUNC_STATIC( QKEYEVENTTRANSITION_SETMODIFIERMASK )
{
  QKeyEventTransition * obj = (QKeyEventTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setModifierMask ( (Qt::KeyboardModifiers) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

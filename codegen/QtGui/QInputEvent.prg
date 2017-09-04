$header

#include "hbclass.ch"

CLASS QInputEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD modifiers
   METHOD setModifiers

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QInputEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QInputEvent(Type type, Qt::KeyboardModifiers modifiers = Qt::NoModifier)
*/
HB_FUNC_STATIC( QINPUTEVENT_NEW )
{
  int par2 = ISNIL(2)? (int) Qt::NoModifier : hb_parni(2);
  QInputEvent * o = new QInputEvent ( (QEvent::Type) hb_parni(1), (Qt::KeyboardModifiers) par2 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QINPUTEVENT_DELETE )
{
  QInputEvent * obj = (QInputEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
Qt::KeyboardModifiers modifiers() const
*/
HB_FUNC_STATIC( QINPUTEVENT_MODIFIERS )
{
  QInputEvent * obj = (QInputEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->modifiers () );
  }
}

/*
void setModifiers(Qt::KeyboardModifiers amodifiers)
*/
HB_FUNC_STATIC( QINPUTEVENT_SETMODIFIERS )
{
  QInputEvent * obj = (QInputEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setModifiers ( (Qt::KeyboardModifiers) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP

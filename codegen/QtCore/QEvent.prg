$header

#include "hbclass.ch"

CLASS QEvent

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD accept
   METHOD ignore
   METHOD isAccepted
   METHOD setAccepted
   METHOD spontaneous
   METHOD type
   METHOD registerEventType

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QEvent ( Type type )
*/
HB_FUNC_STATIC( QEVENT_NEW )
{
  QEvent * o = new QEvent ( (QEvent::Type) hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
void accept ()
*/
HB_FUNC_STATIC( QEVENT_ACCEPT )
{
  QEvent * obj = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->accept ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void ignore ()
*/
HB_FUNC_STATIC( QEVENT_IGNORE )
{
  QEvent * obj = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->ignore ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool isAccepted () const
*/
HB_FUNC_STATIC( QEVENT_ISACCEPTED )
{
  QEvent * obj = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isAccepted () );
  }
}


/*
void setAccepted ( bool accepted )
*/
HB_FUNC_STATIC( QEVENT_SETACCEPTED )
{
  QEvent * obj = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAccepted ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool spontaneous () const
*/
HB_FUNC_STATIC( QEVENT_SPONTANEOUS )
{
  QEvent * obj = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->spontaneous () );
  }
}


/*
Type type () const
*/
HB_FUNC_STATIC( QEVENT_TYPE )
{
  QEvent * obj = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->type () );
  }
}



/*
int registerEventType ( int hint = -1 )
*/
HB_FUNC_STATIC( QEVENT_REGISTEREVENTTYPE )
{
  RINT( QEvent::registerEventType ( OPINT(1,-1) ) );
}

$extraMethods

#pragma ENDDUMP

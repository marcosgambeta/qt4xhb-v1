$header

#include "hbclass.ch"


CLASS QRunnable

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD autoDelete
   METHOD run
   METHOD setAutoDelete
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRunnable
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QRunnable>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QRUNNABLE_DELETE )
{
  QRunnable * obj = (QRunnable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool autoDelete () const
*/
HB_FUNC_STATIC( QRUNNABLE_AUTODELETE )
{
  QRunnable * obj = (QRunnable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->autoDelete () );
  }
}


/*
virtual void run () = 0
*/
HB_FUNC_STATIC( QRUNNABLE_RUN )
{
  QRunnable * obj = (QRunnable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->run ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAutoDelete ( bool autoDelete )
*/
HB_FUNC_STATIC( QRUNNABLE_SETAUTODELETE )
{
  QRunnable * obj = (QRunnable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAutoDelete ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP

$header

#include "hbclass.ch"


CLASS QSystemSemaphore

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD acquire
   METHOD error
   METHOD errorString
   METHOD key
   METHOD release
   METHOD setKey
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QSystemSemaphore>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSystemSemaphore ( const QString & key, int initialValue = 0, AccessMode mode = Open )
*/
HB_FUNC_STATIC( QSYSTEMSEMAPHORE_NEW )
{
  int par3 = ISNIL(3)? (int) QSystemSemaphore::Open : hb_parni(3);
  QSystemSemaphore * o = new QSystemSemaphore ( PQSTRING(1), OPINT(2,0), (QSystemSemaphore::AccessMode) par3 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
bool acquire ()
*/
HB_FUNC_STATIC( QSYSTEMSEMAPHORE_ACQUIRE )
{
  QSystemSemaphore * obj = (QSystemSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->acquire () );
  }
}


/*
SystemSemaphoreError error () const
*/
HB_FUNC_STATIC( QSYSTEMSEMAPHORE_ERROR )
{
  QSystemSemaphore * obj = (QSystemSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->error () );
  }
}

/*
QString errorString () const
*/
$method=|QString|errorString|

/*
QString key () const
*/
$method=|QString|key|

/*
bool release ( int n = 1 )
*/
HB_FUNC_STATIC( QSYSTEMSEMAPHORE_RELEASE )
{
  QSystemSemaphore * obj = (QSystemSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->release ( OPINT(1,1) ) );
  }
}


/*
void setKey ( const QString & key, int initialValue = 0, AccessMode mode = Open )
*/
HB_FUNC_STATIC( QSYSTEMSEMAPHORE_SETKEY )
{
  QSystemSemaphore * obj = (QSystemSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par3 = ISNIL(3)? (int) QSystemSemaphore::Open : hb_parni(3);
    obj->setKey ( PQSTRING(1), OPINT(2,0), (QSystemSemaphore::AccessMode) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP

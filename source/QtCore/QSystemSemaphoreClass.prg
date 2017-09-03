/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

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

PROCEDURE destroyObject () CLASS QSystemSemaphore
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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

HB_FUNC_STATIC( QSYSTEMSEMAPHORE_DELETE )
{
  QSystemSemaphore * obj = (QSystemSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QSYSTEMSEMAPHORE_ERRORSTRING )
{
  QSystemSemaphore * obj = (QSystemSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->errorString () );
  }
}

/*
QString key () const
*/
HB_FUNC_STATIC( QSYSTEMSEMAPHORE_KEY )
{
  QSystemSemaphore * obj = (QSystemSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->key () );
  }
}

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

HB_FUNC_STATIC( QSYSTEMSEMAPHORE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QSYSTEMSEMAPHORE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSYSTEMSEMAPHORE_NEWFROM );
}

HB_FUNC_STATIC( QSYSTEMSEMAPHORE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSYSTEMSEMAPHORE_NEWFROM );
}

HB_FUNC_STATIC( QSYSTEMSEMAPHORE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSYSTEMSEMAPHORE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP

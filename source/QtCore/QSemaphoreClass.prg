/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QSemaphore

   DATA pointer
   DATA class_id INIT Class_Id_QSemaphore
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD acquire
   METHOD available
   METHOD release
   METHOD tryAcquire1
   METHOD tryAcquire2
   METHOD tryAcquire
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSemaphore
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSemaphore>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QSemaphore ( int n = 0 )
*/
HB_FUNC_STATIC( QSEMAPHORE_NEW )
{
  QSemaphore * o = NULL;
  o = new QSemaphore ( OPINT(1,0) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


HB_FUNC_STATIC( QSEMAPHORE_DELETE )
{
  QSemaphore * obj = (QSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void acquire ( int n = 1 )
*/
HB_FUNC_STATIC( QSEMAPHORE_ACQUIRE )
{
  QSemaphore * obj = (QSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->acquire ( OPINT(1,1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
int available () const
*/
HB_FUNC_STATIC( QSEMAPHORE_AVAILABLE )
{
  QSemaphore * obj = (QSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->available (  ) );
  }
}


/*
void release ( int n = 1 )
*/
HB_FUNC_STATIC( QSEMAPHORE_RELEASE )
{
  QSemaphore * obj = (QSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->release ( OPINT(1,1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool tryAcquire ( int n = 1 )
*/
HB_FUNC_STATIC( QSEMAPHORE_TRYACQUIRE1 )
{
  QSemaphore * obj = (QSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->tryAcquire ( OPINT(1,1) ) );
  }
}


/*
bool tryAcquire ( int n, int timeout )
*/
HB_FUNC_STATIC( QSEMAPHORE_TRYACQUIRE2 )
{
  QSemaphore * obj = (QSemaphore *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->tryAcquire ( PINT(1), PINT(2) ) );
  }
}


//[1]bool tryAcquire ( int n = 1 )
//[2]bool tryAcquire ( int n, int timeout )

HB_FUNC_STATIC( QSEMAPHORE_TRYACQUIRE )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSEMAPHORE_TRYACQUIRE1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSEMAPHORE_TRYACQUIRE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QSEMAPHORE_TRYACQUIRE2 );
  }
}


HB_FUNC_STATIC( QSEMAPHORE_NEWFROM )
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

HB_FUNC_STATIC( QSEMAPHORE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSEMAPHORE_NEWFROM );
}

HB_FUNC_STATIC( QSEMAPHORE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSEMAPHORE_NEWFROM );
}

HB_FUNC_STATIC( QSEMAPHORE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSEMAPHORE_SETSELFDESTRUCTION )
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

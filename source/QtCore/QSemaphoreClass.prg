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
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QSemaphore
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QSemaphore
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QSemaphore
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QSemaphore
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QSemaphore
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QSemaphore
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QSemaphore>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QSemaphore ( int n = 0 )
*/
HB_FUNC_STATIC( QSEMAPHORE_NEW )
{
  QSemaphore * o = NULL;
  int par1 = ISNIL(1)? 0 : hb_parni(1);
  o = new QSemaphore ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSemaphore *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
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
    int par1 = ISNIL(1)? 1 : hb_parni(1);
    obj->acquire ( par1 );
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
    int i = obj->available (  );
    hb_retni( i );
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
    int par1 = ISNIL(1)? 1 : hb_parni(1);
    obj->release ( par1 );
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
    int par1 = ISNIL(1)? 1 : hb_parni(1);
    bool b = obj->tryAcquire ( par1 );
    hb_retl( b );
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
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    bool b = obj->tryAcquire ( par1, par2 );
    hb_retl( b );
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



#pragma ENDDUMP

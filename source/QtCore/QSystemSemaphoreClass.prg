/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QSystemSemaphore

   DATA pointer
   DATA class_id INIT Class_Id_QSystemSemaphore
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QSystemSemaphore
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QSystemSemaphore
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QSystemSemaphore
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QSystemSemaphore
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QSystemSemaphore
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QSystemSemaphore
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QSystemSemaphore>

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
QSystemSemaphore ( const QString & key, int initialValue = 0, AccessMode mode = Open )
*/
HB_FUNC_STATIC( QSYSTEMSEMAPHORE_NEW )
{
  QSystemSemaphore * o = NULL;
  QString par1 = hb_parc(1);
  int par2 = ISNIL(2)? 0 : hb_parni(2);
  int par3 = ISNIL(3)? (int) QSystemSemaphore::Open : hb_parni(3);
  o = new QSystemSemaphore ( par1, par2,  (QSystemSemaphore::AccessMode) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QSystemSemaphore *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
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
    bool b = obj->acquire (  );
    hb_retl( b );
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
    int i = obj->error (  );
    hb_retni( i );
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
    QString str1 = obj->errorString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
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
    QString str1 = obj->key (  );
    hb_retc( (const char *) str1.toLatin1().data() );
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
    int par1 = ISNIL(1)? 1 : hb_parni(1);
    bool b = obj->release ( par1 );
    hb_retl( b );
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
    QString par1 = hb_parc(1);
    int par2 = ISNIL(2)? 0 : hb_parni(2);
    int par3 = ISNIL(3)? (int) QSystemSemaphore::Open : hb_parni(3);
    obj->setKey ( par1, par2,  (QSystemSemaphore::AccessMode) par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP

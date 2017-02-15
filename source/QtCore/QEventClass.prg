/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QEvent

   DATA pointer
   DATA class_id INIT Class_Id_QEvent
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QEvent
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QEvent
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QEvent
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QEvent
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QEvent
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QEvent>

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
QEvent ( Type type )
*/
HB_FUNC_STATIC( QEVENT_NEW )
{
  QEvent * o = NULL;
  int par1 = hb_parni(1);
  o = new QEvent (  (QEvent::Type) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QEVENT_DELETE )
{
  QEvent * obj = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void accept ()
*/
HB_FUNC_STATIC( QEVENT_ACCEPT )
{
  QEvent * obj = (QEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->accept (  );
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
    obj->ignore (  );
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
    hb_retl( obj->isAccepted (  ) );
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
    bool par1 = hb_parl(1);
    obj->setAccepted ( par1 );
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
    hb_retl( obj->spontaneous (  ) );
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
    int i = obj->type (  );
    hb_retni( i );
  }
}



/*
int registerEventType ( int hint = -1 )
*/
HB_FUNC_STATIC( QEVENT_REGISTEREVENTTYPE )
{
  int par1 = ISNIL(1)? -1 : hb_parni(1);
  int i = QEvent::registerEventType ( par1 );
  hb_retni( i );
}




#pragma ENDDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINTF

CLASS QGesture INHERIT QObject

   DATA class_id INIT Class_Id_QGesture
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD gestureCancelPolicy
   METHOD gestureType
   METHOD hasHotSpot
   METHOD hotSpot
   METHOD setGestureCancelPolicy
   METHOD setHotSpot
   METHOD state
   METHOD unsetHotSpot
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGesture
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QGesture>

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
QGesture ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QGESTURE_NEW )
{
  QGesture * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGesture ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGesture *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QGESTURE_DELETE )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
GestureCancelPolicy gestureCancelPolicy () const
*/
HB_FUNC_STATIC( QGESTURE_GESTURECANCELPOLICY )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->gestureCancelPolicy (  ) );
  }
}


/*
Qt::GestureType gestureType () const
*/
HB_FUNC_STATIC( QGESTURE_GESTURETYPE )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->gestureType (  ) );
  }
}


/*
bool hasHotSpot () const
*/
HB_FUNC_STATIC( QGESTURE_HASHOTSPOT )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->hasHotSpot (  ) );
  }
}


/*
QPointF hotSpot () const
*/
HB_FUNC_STATIC( QGESTURE_HOTSPOT )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->hotSpot (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
void setGestureCancelPolicy ( GestureCancelPolicy policy )
*/
HB_FUNC_STATIC( QGESTURE_SETGESTURECANCELPOLICY )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setGestureCancelPolicy (  (QGesture::GestureCancelPolicy) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setHotSpot ( const QPointF & value )
*/
HB_FUNC_STATIC( QGESTURE_SETHOTSPOT )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setHotSpot ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
Qt::GestureState state () const
*/
HB_FUNC_STATIC( QGESTURE_STATE )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->state (  ) );
  }
}


/*
void unsetHotSpot ()
*/
HB_FUNC_STATIC( QGESTURE_UNSETHOTSPOT )
{
  QGesture * obj = (QGesture *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->unsetHotSpot (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





#pragma ENDDUMP

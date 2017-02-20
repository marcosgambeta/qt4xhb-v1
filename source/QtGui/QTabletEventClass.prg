/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINT
REQUEST QPOINTF

CLASS QTabletEvent INHERIT QInputEvent

   DATA class_id INIT Class_Id_QTabletEvent
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD pos
   METHOD globalPos
   METHOD hiResGlobalPos
   METHOD x
   METHOD y
   METHOD globalX
   METHOD globalY
   METHOD hiResGlobalX
   METHOD hiResGlobalY
   METHOD device
   METHOD pointerType
   METHOD uniqueId
   METHOD pressure
   METHOD z
   METHOD tangentialPressure
   METHOD rotation
   METHOD xTilt
   METHOD yTilt
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTabletEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTabletEvent>

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
QTabletEvent(Type t, const QPoint &pos, const QPoint &globalPos, const QPointF &hiResGlobalPos,int device, int pointerType, qreal pressure, int xTilt, int yTilt,qreal tangentialPressure, qreal rotation, int z,Qt::KeyboardModifiers keyState, qint64 uniqueID)
*/
HB_FUNC_STATIC( QTABLETEVENT_NEW )
{
  QTabletEvent * o = NULL;
  int par1 = hb_parni(1);
  QPoint * par2 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QPoint * par3 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QPointF * par4 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par5 = hb_parni(5);
  int par6 = hb_parni(6);
  qreal par7 = hb_parnd(7);
  int par8 = hb_parni(8);
  int par9 = hb_parni(9);
  qreal par10 = hb_parnd(10);
  qreal par11 = hb_parnd(11);
  int par12 = hb_parni(12);
  int par13 = hb_parni(13);
  qint64 par14 = hb_parni(14);
  o = new QTabletEvent (  (QEvent::Type) par1, *par2, *par3, *par4, par5, par6, par7, par8, par9, par10, par11, par12,  (Qt::KeyboardModifiers) par13, par14 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTabletEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QTABLETEVENT_DELETE )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const QPoint &pos() const
*/
HB_FUNC_STATIC( QTABLETEVENT_POS )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QPoint * ptr = &obj->pos (  );
    _qt4xhb_createReturnClass ( ptr, "QPOINT" );
  }
}


/*
const QPoint &globalPos() const
*/
HB_FUNC_STATIC( QTABLETEVENT_GLOBALPOS )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QPoint * ptr = &obj->globalPos (  );
    _qt4xhb_createReturnClass ( ptr, "QPOINT" );
  }
}


/*
const QPointF &hiResGlobalPos() const
*/
HB_FUNC_STATIC( QTABLETEVENT_HIRESGLOBALPOS )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QPointF * ptr = &obj->hiResGlobalPos (  );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF" );
  }
}


/*
int x() const
*/
HB_FUNC_STATIC( QTABLETEVENT_X )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->x (  ) );
  }
}


/*
int y() const
*/
HB_FUNC_STATIC( QTABLETEVENT_Y )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->y (  ) );
  }
}


/*
int globalX() const
*/
HB_FUNC_STATIC( QTABLETEVENT_GLOBALX )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->globalX (  ) );
  }
}


/*
int globalY() const
*/
HB_FUNC_STATIC( QTABLETEVENT_GLOBALY )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->globalY (  ) );
  }
}


/*
qreal hiResGlobalX() const
*/
HB_FUNC_STATIC( QTABLETEVENT_HIRESGLOBALX )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->hiResGlobalX (  );
    hb_retnd( r );
  }
}


/*
qreal hiResGlobalY() const
*/
HB_FUNC_STATIC( QTABLETEVENT_HIRESGLOBALY )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->hiResGlobalY (  );
    hb_retnd( r );
  }
}


/*
TabletDevice device() const
*/
HB_FUNC_STATIC( QTABLETEVENT_DEVICE )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->device (  ) );
  }
}


/*
PointerType pointerType() const
*/
HB_FUNC_STATIC( QTABLETEVENT_POINTERTYPE )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->pointerType (  ) );
  }
}


/*
qint64 uniqueId() const
*/
HB_FUNC_STATIC( QTABLETEVENT_UNIQUEID )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->uniqueId (  );
    hb_retni( i );
  }
}


/*
qreal pressure() const
*/
HB_FUNC_STATIC( QTABLETEVENT_PRESSURE )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->pressure (  );
    hb_retnd( r );
  }
}


/*
int z() const
*/
HB_FUNC_STATIC( QTABLETEVENT_Z )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->z (  ) );
  }
}


/*
qreal tangentialPressure() const
*/
HB_FUNC_STATIC( QTABLETEVENT_TANGENTIALPRESSURE )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->tangentialPressure (  );
    hb_retnd( r );
  }
}


/*
qreal rotation() const
*/
HB_FUNC_STATIC( QTABLETEVENT_ROTATION )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->rotation (  );
    hb_retnd( r );
  }
}


/*
int xTilt() const
*/
HB_FUNC_STATIC( QTABLETEVENT_XTILT )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->xTilt (  ) );
  }
}


/*
int yTilt() const
*/
HB_FUNC_STATIC( QTABLETEVENT_YTILT )
{
  QTabletEvent * obj = (QTabletEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->yTilt (  ) );
  }
}





#pragma ENDDUMP

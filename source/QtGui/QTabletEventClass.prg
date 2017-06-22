/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QTabletEvent INHERIT QInputEvent

   DATA self_destruction INIT .F.

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

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTabletEvent(Type t, const QPoint &pos, const QPoint &globalPos, const QPointF &hiResGlobalPos,int device, int pointerType, qreal pressure, int xTilt, int yTilt,qreal tangentialPressure, qreal rotation, int z,Qt::KeyboardModifiers keyState, qint64 uniqueID)
*/
HB_FUNC_STATIC( QTABLETEVENT_NEW )
{
  int par13 = hb_parni(13);
  QTabletEvent * o = new QTabletEvent (  (QEvent::Type) hb_parni(1), *PQPOINT(2), *PQPOINT(3), *PQPOINTF(4), PINT(5), PINT(6), PQREAL(7), PINT(8), PINT(9), PQREAL(10), PQREAL(11), PINT(12),  (Qt::KeyboardModifiers) par13, PQINT64(14) );
  _qt4xhb_storePointerAndFlag ( o, false );
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
    const QPoint * ptr = &obj->pos ();
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
    const QPoint * ptr = &obj->globalPos ();
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
    const QPointF * ptr = &obj->hiResGlobalPos ();
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
    RINT( obj->x () );
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
    RINT( obj->y () );
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
    RINT( obj->globalX () );
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
    RINT( obj->globalY () );
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
    RQREAL( obj->hiResGlobalX () );
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
    RQREAL( obj->hiResGlobalY () );
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
    hb_retni( (int) obj->device () );
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
    hb_retni( (int) obj->pointerType () );
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
    RQINT64( obj->uniqueId () );
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
    RQREAL( obj->pressure () );
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
    RINT( obj->z () );
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
    RQREAL( obj->tangentialPressure () );
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
    RQREAL( obj->rotation () );
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
    RINT( obj->xTilt () );
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
    RINT( obj->yTilt () );
  }
}





#pragma ENDDUMP

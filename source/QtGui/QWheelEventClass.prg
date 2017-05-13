/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QWheelEvent INHERIT QInputEvent

   DATA class_id INIT Class_Id_QWheelEvent
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD delta
   METHOD pos
   METHOD globalPos
   METHOD x
   METHOD y
   METHOD globalX
   METHOD globalY
   METHOD buttons
   METHOD orientation
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWheelEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QWheelEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWheelEvent(const QPoint &pos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)
*/
HB_FUNC_STATIC( QWHEELEVENT_NEW1 )
{
  QWheelEvent * o = NULL;
  QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  int par5 = ISNIL(5)? (int) Qt::Vertical : hb_parni(5);
  o = new QWheelEvent ( *par1, par2,  (Qt::MouseButtons) par3,  (Qt::KeyboardModifiers) par4,  (Qt::Orientation) par5 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QWheelEvent(const QPoint &pos, const QPoint& globalPos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)
*/
HB_FUNC_STATIC( QWHEELEVENT_NEW2 )
{
  QWheelEvent * o = NULL;
  QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QPoint * par2 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par3 = hb_parni(3);
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  int par6 = ISNIL(6)? (int) Qt::Vertical : hb_parni(6);
  o = new QWheelEvent ( *par1, *par2, par3,  (Qt::MouseButtons) par4,  (Qt::KeyboardModifiers) par5,  (Qt::Orientation) par6 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QWheelEvent(const QPoint &pos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)
//[2]QWheelEvent(const QPoint &pos, const QPoint& globalPos, int delta,Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers,Qt::Orientation orient = Qt::Vertical)

HB_FUNC_STATIC( QWHEELEVENT_NEW )
{
  if( ISBETWEEN(4,5) && ISQPOINT(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QWHEELEVENT_NEW1 );
  }
  else if( ISBETWEEN(5,6) && ISQPOINT(1) && ISQPOINT(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && (ISNUM(6)||ISNIL(6)) )
  {
    HB_FUNC_EXEC( QWHEELEVENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QWHEELEVENT_DELETE )
{
  QWheelEvent * obj = (QWheelEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
int delta() const
*/
HB_FUNC_STATIC( QWHEELEVENT_DELTA )
{
  QWheelEvent * obj = (QWheelEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->delta () );
  }
}


/*
const QPoint &pos() const
*/
HB_FUNC_STATIC( QWHEELEVENT_POS )
{
  QWheelEvent * obj = (QWheelEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QPoint * ptr = &obj->pos ();
    _qt4xhb_createReturnClass ( ptr, "QPOINT" );
  }
}


/*
const QPoint &globalPos() const
*/
HB_FUNC_STATIC( QWHEELEVENT_GLOBALPOS )
{
  QWheelEvent * obj = (QWheelEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QPoint * ptr = &obj->globalPos ();
    _qt4xhb_createReturnClass ( ptr, "QPOINT" );
  }
}


/*
int x() const
*/
HB_FUNC_STATIC( QWHEELEVENT_X )
{
  QWheelEvent * obj = (QWheelEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->x () );
  }
}


/*
int y() const
*/
HB_FUNC_STATIC( QWHEELEVENT_Y )
{
  QWheelEvent * obj = (QWheelEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->y () );
  }
}


/*
int globalX() const
*/
HB_FUNC_STATIC( QWHEELEVENT_GLOBALX )
{
  QWheelEvent * obj = (QWheelEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->globalX () );
  }
}


/*
int globalY() const
*/
HB_FUNC_STATIC( QWHEELEVENT_GLOBALY )
{
  QWheelEvent * obj = (QWheelEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->globalY () );
  }
}


/*
Qt::MouseButtons buttons() const
*/
HB_FUNC_STATIC( QWHEELEVENT_BUTTONS )
{
  QWheelEvent * obj = (QWheelEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->buttons () );
  }
}


/*
Qt::Orientation orientation() const
*/
HB_FUNC_STATIC( QWHEELEVENT_ORIENTATION )
{
  QWheelEvent * obj = (QWheelEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->orientation () );
  }
}





#pragma ENDDUMP

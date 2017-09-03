$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPOINT
#endif

CLASS QGraphicsSceneWheelEvent INHERIT QGraphicsSceneEvent

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD buttons
   METHOD delta
   METHOD modifiers
   METHOD orientation
   METHOD pos
   METHOD scenePos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsSceneWheelEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsSceneWheelEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QGRAPHICSSCENEWHEELEVENT_DELETE )
{
  QGraphicsSceneWheelEvent * obj = (QGraphicsSceneWheelEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
Qt::MouseButtons buttons () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEWHEELEVENT_BUTTONS )
{
  QGraphicsSceneWheelEvent * obj = (QGraphicsSceneWheelEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->buttons () );
  }
}

/*
int delta () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEWHEELEVENT_DELTA )
{
  QGraphicsSceneWheelEvent * obj = (QGraphicsSceneWheelEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->delta () );
  }
}

/*
Qt::KeyboardModifiers modifiers () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEWHEELEVENT_MODIFIERS )
{
  QGraphicsSceneWheelEvent * obj = (QGraphicsSceneWheelEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->modifiers () );
  }
}

/*
Qt::Orientation orientation () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEWHEELEVENT_ORIENTATION )
{
  QGraphicsSceneWheelEvent * obj = (QGraphicsSceneWheelEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RENUM( obj->orientation () );
  }
}

/*
QPointF pos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEWHEELEVENT_POS )
{
  QGraphicsSceneWheelEvent * obj = (QGraphicsSceneWheelEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->pos () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPointF scenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEWHEELEVENT_SCENEPOS )
{
  QGraphicsSceneWheelEvent * obj = (QGraphicsSceneWheelEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->scenePos () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPoint screenPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEWHEELEVENT_SCREENPOS )
{
  QGraphicsSceneWheelEvent * obj = (QGraphicsSceneWheelEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->screenPos () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

#pragma ENDDUMP

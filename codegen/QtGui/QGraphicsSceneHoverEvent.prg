$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPOINT
#endif

CLASS QGraphicsSceneHoverEvent INHERIT QGraphicsSceneEvent

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD lastPos
   METHOD lastScenePos
   METHOD lastScreenPos
   METHOD modifiers
   METHOD pos
   METHOD scenePos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsSceneHoverEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_DELETE )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QPointF lastPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_LASTPOS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->lastPos () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPointF lastScenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_LASTSCENEPOS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->lastScenePos () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPoint lastScreenPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_LASTSCREENPOS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->lastScreenPos () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
Qt::KeyboardModifiers modifiers () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_MODIFIERS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->modifiers () );
  }
}

/*
QPointF pos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_POS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->pos () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPointF scenePos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_SCENEPOS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->scenePos () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QPoint screenPos () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENEHOVEREVENT_SCREENPOS )
{
  QGraphicsSceneHoverEvent * obj = (QGraphicsSceneHoverEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->screenPos () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

#pragma ENDDUMP

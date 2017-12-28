$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPOINT
#endif

CLASS QGraphicsSceneContextMenuEvent INHERIT QGraphicsSceneEvent

   METHOD delete
   METHOD modifiers
   METHOD pos
   METHOD reason
   METHOD scenePos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsSceneContextMenuEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

$prototype=Qt::KeyboardModifiers modifiers () const
$method=|Qt::KeyboardModifiers|modifiers|

$prototype=QPointF pos () const
$method=|QPointF|pos|

$prototype=Reason reason () const
HB_FUNC_STATIC( QGRAPHICSSCENECONTEXTMENUEVENT_REASON )
{
  QGraphicsSceneContextMenuEvent * obj = (QGraphicsSceneContextMenuEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->reason () );
  }
}

$prototype=QPointF scenePos () const
$method=|QPointF|scenePos|

$prototype=QPoint screenPos () const
$method=|QPoint|screenPos|

#pragma ENDDUMP

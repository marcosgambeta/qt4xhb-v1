$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZEF
#endif

CLASS QGraphicsSceneResizeEvent INHERIT QGraphicsSceneEvent

   METHOD new
   METHOD delete
   METHOD newSize
   METHOD oldSize

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QGraphicsSceneResizeEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QGraphicsSceneMoveEvent ()
HB_FUNC_STATIC( QGRAPHICSSCENERESIZEEVENT_NEW )
{
  QGraphicsSceneResizeEvent * o = new QGraphicsSceneResizeEvent ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=QSizeF newSize () const
HB_FUNC_STATIC( QGRAPHICSSCENERESIZEEVENT_NEWSIZE )
{
  QGraphicsSceneResizeEvent * obj = (QGraphicsSceneResizeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->newSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

$prototype=QSizeF oldSize () const
HB_FUNC_STATIC( QGRAPHICSSCENERESIZEEVENT_OLDSIZE )
{
  QGraphicsSceneResizeEvent * obj = (QGraphicsSceneResizeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->oldSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

#pragma ENDDUMP

%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QPOINT
#endif

CLASS QGraphicsSceneHelpEvent INHERIT QGraphicsSceneEvent

   METHOD delete
   METHOD scenePos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=QPointF scenePos () const
HB_FUNC_STATIC( QGRAPHICSSCENEHELPEVENT_SCENEPOS )
{
  QGraphicsSceneHelpEvent * obj = (QGraphicsSceneHelpEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->scenePos () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

$prototype=QPoint screenPos () const
HB_FUNC_STATIC( QGRAPHICSSCENEHELPEVENT_SCREENPOS )
{
  QGraphicsSceneHelpEvent * obj = (QGraphicsSceneHelpEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->screenPos () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

#pragma ENDDUMP

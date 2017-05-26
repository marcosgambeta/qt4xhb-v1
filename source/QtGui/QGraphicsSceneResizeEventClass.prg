/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZEF
#endif

CLASS QGraphicsSceneResizeEvent INHERIT QGraphicsSceneEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD newSize
   METHOD oldSize
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsSceneResizeEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsSceneResizeEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsSceneMoveEvent ()
*/
HB_FUNC_STATIC( QGRAPHICSSCENERESIZEEVENT_NEW )
{
  QGraphicsSceneResizeEvent * o = NULL;
  o = new QGraphicsSceneResizeEvent ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QGRAPHICSSCENERESIZEEVENT_DELETE )
{
  QGraphicsSceneResizeEvent * obj = (QGraphicsSceneResizeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QSizeF newSize () const
*/
HB_FUNC_STATIC( QGRAPHICSSCENERESIZEEVENT_NEWSIZE )
{
  QGraphicsSceneResizeEvent * obj = (QGraphicsSceneResizeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->newSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}


/*
QSizeF oldSize () const
*/
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

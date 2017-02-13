/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPOINTF

CLASS QGraphicsSceneMoveEvent INHERIT QGraphicsSceneEvent

   DATA class_id INIT Class_Id_QGraphicsSceneMoveEvent
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD newPos
   METHOD oldPos
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsSceneMoveEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QGraphicsSceneMoveEvent>

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
QGraphicsSceneMoveEvent ()
*/
HB_FUNC( QGRAPHICSSCENEMOVEEVENT_NEW )
{
  QGraphicsSceneMoveEvent * o = NULL;
  o = new QGraphicsSceneMoveEvent (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsSceneMoveEvent *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QGRAPHICSSCENEMOVEEVENT_DELETE )
{
  QGraphicsSceneMoveEvent * obj = (QGraphicsSceneMoveEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPointF newPos () const
*/
HB_FUNC( QGRAPHICSSCENEMOVEEVENT_NEWPOS )
{
  QGraphicsSceneMoveEvent * obj = (QGraphicsSceneMoveEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->newPos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );  }
}


/*
QPointF oldPos () const
*/
HB_FUNC( QGRAPHICSSCENEMOVEEVENT_OLDPOS )
{
  QGraphicsSceneMoveEvent * obj = (QGraphicsSceneMoveEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->oldPos (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );  }
}




#pragma ENDDUMP

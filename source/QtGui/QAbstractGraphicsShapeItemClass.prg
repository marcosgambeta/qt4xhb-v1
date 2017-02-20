/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBRUSH
REQUEST QPEN
REQUEST QPAINTERPATH

CLASS QAbstractGraphicsShapeItem INHERIT QGraphicsItem

   DATA class_id INIT Class_Id_QAbstractGraphicsShapeItem
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD brush
   METHOD pen
   METHOD setBrush
   METHOD setPen
   METHOD isObscuredBy
   METHOD opaqueArea
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractGraphicsShapeItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QAbstractGraphicsShapeItem>

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

#include <QBrush>
#include <QPen>


HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_DELETE )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QBrush brush () const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_BRUSH )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * ptr = new QBrush( obj->brush (  ) );
    _qt4xhb_createReturnClass ( ptr, "QBRUSH", true );
  }
}


/*
QPen pen () const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_PEN )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPen * ptr = new QPen( obj->pen (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPEN", true );
  }
}


/*
void setBrush ( const QBrush & brush )
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_SETBRUSH )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBrush * par1 = (QBrush *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setBrush ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPen ( const QPen & pen )
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_SETPEN )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPen * par1 = (QPen *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPen ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_ISOBSCUREDBY )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->isObscuredBy ( par1 ) );
  }
}


/*
virtual QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QABSTRACTGRAPHICSSHAPEITEM_OPAQUEAREA )
{
  QAbstractGraphicsShapeItem * obj = (QAbstractGraphicsShapeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}




#pragma ENDDUMP

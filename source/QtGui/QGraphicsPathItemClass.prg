/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QPAINTERPATH
REQUEST QRECTF

CLASS QGraphicsPathItem INHERIT QAbstractGraphicsShapeItem

   DATA class_id INIT Class_Id_QGraphicsPathItem
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD path
   METHOD setPath
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsPathItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsPathItem>

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
QGraphicsPathItem ( QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_NEW1 )
{
  QGraphicsPathItem * o = NULL;
  QGraphicsItem * par1 = ISNIL(1)? 0 : (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGraphicsPathItem ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsPathItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QGraphicsPathItem ( const QPainterPath & path, QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_NEW2 )
{
  QGraphicsPathItem * o = NULL;
  QPainterPath * par1 = (QPainterPath *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGraphicsItem * par2 = ISNIL(2)? 0 : (QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QGraphicsPathItem ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QGraphicsPathItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QGraphicsPathItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsPathItem ( const QPainterPath & path, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSPATHITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSPATHITEM_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQPAINTERPATH(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSPATHITEM_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSPATHITEM_DELETE )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPainterPath path () const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_PATH )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->path (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
void setPath ( const QPainterPath & path )
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_SETPATH )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPath ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_BOUNDINGRECT )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
virtual bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_CONTAINS )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->contains ( *par1 ) );
  }
}


/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_ISOBSCUREDBY )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    hb_retl( obj->isObscuredBy ( par1 ) );
  }
}


/*
virtual QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_OPAQUEAREA )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_PAINT )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainter * par1 = (QPainter *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QWidget * par3 = ISNIL(3)? 0 : (QWidget *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->paint ( par1, par2, par3 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QPainterPath shape () const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_SHAPE )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->shape (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSPATHITEM_TYPE )
{
  QGraphicsPathItem * obj = (QGraphicsPathItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( obj->type (  ) );
  }
}




#pragma ENDDUMP

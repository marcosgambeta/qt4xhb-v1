$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsItemGroup INHERIT QGraphicsItem

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addToGroup
   METHOD removeFromGroup
   METHOD boundingRect
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsItemGroup
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsItemGroup>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsItemGroup ( QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSITEMGROUP_NEW )
{
  QGraphicsItemGroup * o = new QGraphicsItemGroup ( OPQGRAPHICSITEM(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

HB_FUNC_STATIC( QGRAPHICSITEMGROUP_DELETE )
{
  QGraphicsItemGroup * obj = (QGraphicsItemGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void addToGroup ( QGraphicsItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSITEMGROUP_ADDTOGROUP )
{
  QGraphicsItemGroup * obj = (QGraphicsItemGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addToGroup ( PQGRAPHICSITEM(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeFromGroup ( QGraphicsItem * item )
*/
HB_FUNC_STATIC( QGRAPHICSITEMGROUP_REMOVEFROMGROUP )
{
  QGraphicsItemGroup * obj = (QGraphicsItemGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeFromGroup ( PQGRAPHICSITEM(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSITEMGROUP_BOUNDINGRECT )
{
  QGraphicsItemGroup * obj = (QGraphicsItemGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSITEMGROUP_ISOBSCUREDBY )
{
  QGraphicsItemGroup * obj = (QGraphicsItemGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->isObscuredBy ( par1 ) );
  }
}

/*
virtual QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QGRAPHICSITEMGROUP_OPAQUEAREA )
{
  QGraphicsItemGroup * obj = (QGraphicsItemGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea () );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSITEMGROUP_PAINT )
{
  QGraphicsItemGroup * obj = (QGraphicsItemGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->paint ( PQPAINTER(1), par2, OPQWIDGET(3,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSITEMGROUP_TYPE )
{
  QGraphicsItemGroup * obj = (QGraphicsItemGroup *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->type () );
  }
}

#pragma ENDDUMP

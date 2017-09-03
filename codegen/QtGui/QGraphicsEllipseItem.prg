$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsEllipseItem INHERIT QAbstractGraphicsShapeItem

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD rect
   METHOD setRect1
   METHOD setRect2
   METHOD setRect
   METHOD setSpanAngle
   METHOD setStartAngle
   METHOD spanAngle
   METHOD startAngle
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsEllipseItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsEllipseItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsEllipseItem ( QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_NEW1 )
{
  QGraphicsEllipseItem * o = new QGraphicsEllipseItem ( OPQGRAPHICSITEM(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QGraphicsEllipseItem ( const QRectF & rect, QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_NEW2 )
{
  QGraphicsEllipseItem * o = new QGraphicsEllipseItem ( *PQRECTF(1), OPQGRAPHICSITEM(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QGraphicsEllipseItem ( qreal x, qreal y, qreal width, qreal height, QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_NEW3 )
{
  QGraphicsEllipseItem * o = new QGraphicsEllipseItem ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), OPQGRAPHICSITEM(5,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QGraphicsEllipseItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsEllipseItem ( const QRectF & rect, QGraphicsItem * parent = 0 )
//[3]QGraphicsEllipseItem ( qreal x, qreal y, qreal width, qreal height, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSELLIPSEITEM_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQRECTF(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSELLIPSEITEM_NEW2 );
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQGRAPHICSITEM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QGRAPHICSELLIPSEITEM_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_DELETE )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QRectF rect () const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_RECT )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->rect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
void setRect ( const QRectF & rect )
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_SETRECT1 )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRect ( *PQRECTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setRect ( qreal x, qreal y, qreal width, qreal height )
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_SETRECT2 )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setRect ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setRect ( const QRectF & rect )
//[2]void setRect ( qreal x, qreal y, qreal width, qreal height )

HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_SETRECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSELLIPSEITEM_SETRECT1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSELLIPSEITEM_SETRECT2 );
  }
}

/*
void setSpanAngle ( int angle )
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_SETSPANANGLE )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSpanAngle ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setStartAngle ( int angle )
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_SETSTARTANGLE )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setStartAngle ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
int spanAngle () const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_SPANANGLE )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->spanAngle () );
  }
}

/*
int startAngle () const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_STARTANGLE )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->startAngle () );
  }
}

/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_BOUNDINGRECT )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
virtual bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_CONTAINS )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->contains ( *PQPOINTF(1) ) );
  }
}

/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_ISOBSCUREDBY )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->isObscuredBy ( par1 ) );
  }
}

/*
virtual QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_OPAQUEAREA )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea () );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_PAINT )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->paint ( PQPAINTER(1), par2, OPQWIDGET(3,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QPainterPath shape () const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_SHAPE )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->shape () );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSELLIPSEITEM_TYPE )
{
  QGraphicsEllipseItem * obj = (QGraphicsEllipseItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->type () );
  }
}

#pragma ENDDUMP

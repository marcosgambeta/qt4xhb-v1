/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QLINEF
REQUEST QPEN
REQUEST QRECTF
REQUEST QPAINTERPATH
#endif

CLASS QGraphicsLineItem INHERIT QGraphicsItem

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD line
   METHOD pen
   METHOD setLine1
   METHOD setLine2
   METHOD setLine
   METHOD setPen
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsLineItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsLineItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QPen>

/*
QGraphicsLineItem ( QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_NEW1 )
{
  QGraphicsLineItem * o = new QGraphicsLineItem ( OPQGRAPHICSITEM(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QGraphicsLineItem ( const QLineF & line, QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_NEW2 )
{
  QGraphicsLineItem * o = new QGraphicsLineItem ( *PQLINEF(1), OPQGRAPHICSITEM(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QGraphicsLineItem ( qreal x1, qreal y1, qreal x2, qreal y2, QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_NEW3 )
{
  QGraphicsLineItem * o = new QGraphicsLineItem ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4), OPQGRAPHICSITEM(5,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QGraphicsLineItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsLineItem ( const QLineF & line, QGraphicsItem * parent = 0 )
//[3]QGraphicsLineItem ( qreal x1, qreal y1, qreal x2, qreal y2, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSLINEITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSLINEITEM_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQLINEF(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSLINEITEM_NEW2 );
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISQGRAPHICSITEM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QGRAPHICSLINEITEM_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSLINEITEM_DELETE )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QLineF line () const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_LINE )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLineF * ptr = new QLineF( obj->line () );
    _qt4xhb_createReturnClass ( ptr, "QLINEF", true );
  }
}

/*
QPen pen () const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_PEN )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPen * ptr = new QPen( obj->pen () );
    _qt4xhb_createReturnClass ( ptr, "QPEN", true );
  }
}

/*
void setLine ( const QLineF & line )
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_SETLINE1 )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLine ( *PQLINEF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setLine ( qreal x1, qreal y1, qreal x2, qreal y2 )
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_SETLINE2 )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLine ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void setLine ( const QLineF & line )
//[2]void setLine ( qreal x1, qreal y1, qreal x2, qreal y2 )

HB_FUNC_STATIC( QGRAPHICSLINEITEM_SETLINE )
{
  if( ISNUMPAR(1) && ISQLINEF(1) )
  {
    HB_FUNC_EXEC( QGRAPHICSLINEITEM_SETLINE1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QGRAPHICSLINEITEM_SETLINE2 );
  }
}

/*
void setPen ( const QPen & pen )
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_SETPEN )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPen ( *PQPEN(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_BOUNDINGRECT )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
virtual bool contains ( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_CONTAINS )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->contains ( *PQPOINTF(1) ) );
  }
}

/*
virtual bool isObscuredBy ( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_ISOBSCUREDBY )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QGraphicsItem * par1 = (const QGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RBOOL( obj->isObscuredBy ( par1 ) );
  }
}

/*
virtual QPainterPath opaqueArea () const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_OPAQUEAREA )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->opaqueArea () );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_PAINT )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QGRAPHICSLINEITEM_SHAPE )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * ptr = new QPainterPath( obj->shape () );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}

/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSLINEITEM_TYPE )
{
  QGraphicsLineItem * obj = (QGraphicsLineItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->type () );
  }
}

#pragma ENDDUMP

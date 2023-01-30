/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPAINTERPATH
REQUEST QRECTF
#endif

CLASS QGraphicsRectItem INHERIT QAbstractGraphicsShapeItem

   METHOD new
   METHOD delete
   METHOD rect
   METHOD setRect
   METHOD boundingRect
   METHOD contains
   METHOD isObscuredBy
   METHOD opaqueArea
   METHOD paint
   METHOD shape
   METHOD type

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsRectItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QGraphicsRectItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QGRAPHICSRECTITEM_NEW )
{
  if( ISBETWEEN( 0, 1 ) && ( ISQGRAPHICSITEM( 1 ) || HB_ISNIL( 1 ) ) )
  {
    /*
    QGraphicsRectItem( QGraphicsItem * parent = 0 )
    */
    QGraphicsRectItem * obj = new QGraphicsRectItem( HB_ISNIL( 1 ) ? 0 : static_cast< QGraphicsItem * >( Qt4xHb::itemGetPtr( 1 ) ) );
    Qt4xHb::returnNewObject( obj, true );
  }
  else if( ISBETWEEN( 1, 2 ) && ISQRECTF( 1 ) && ( ISQGRAPHICSITEM( 2 ) || HB_ISNIL( 2 ) ) )
  {
    /*
    QGraphicsRectItem( const QRectF & rect, QGraphicsItem * parent = 0 )
    */
    QGraphicsRectItem * obj = new QGraphicsRectItem( *PQRECTF( 1 ), HB_ISNIL( 2 ) ? 0 : static_cast< QGraphicsItem * >( Qt4xHb::itemGetPtr( 2 ) ) );
    Qt4xHb::returnNewObject( obj, true );
  }
  else if( ISBETWEEN( 4, 5 ) && HB_ISNUM( 1 ) && HB_ISNUM( 2 ) && HB_ISNUM( 3 ) && HB_ISNUM( 4 ) && ( ISQGRAPHICSITEM( 5 ) || HB_ISNIL( 5 ) ) )
  {
    /*
    QGraphicsRectItem( qreal x, qreal y, qreal width, qreal height, QGraphicsItem * parent = 0 )
    */
    QGraphicsRectItem * obj = new QGraphicsRectItem( PQREAL( 1 ), PQREAL( 2 ), PQREAL( 3 ), PQREAL( 4 ), HB_ISNIL( 5 ) ? 0 : static_cast< QGraphicsItem * >( Qt4xHb::itemGetPtr( 5 ) ) );
    Qt4xHb::returnNewObject( obj, true );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QGRAPHICSRECTITEM_DELETE )
{
  QGraphicsRectItem * obj = static_cast< QGraphicsRectItem * >( Qt4xHb::itemGetPtrStackSelfItem() );

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
QRectF rect() const
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_RECT )
{
  QGraphicsRectItem * obj = static_cast< QGraphicsRectItem * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QRectF * ptr = new QRectF( obj->rect() );
      Qt4xHb::createReturnClass( ptr, "QRECTF", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QGRAPHICSRECTITEM_SETRECT )
{
  if( ISNUMPAR( 1 ) && ISQRECTF( 1 ) )
  {
    /*
    void setRect( const QRectF & rect )
    */
    QGraphicsRectItem * obj = static_cast< QGraphicsRectItem * >( Qt4xHb::itemGetPtrStackSelfItem() );

    if( obj != NULL )
    {
      obj->setRect( *PQRECTF( 1 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
  }
  else if( ISNUMPAR( 4 ) && HB_ISNUM( 1 ) && HB_ISNUM( 2 ) && HB_ISNUM( 3 ) && HB_ISNUM( 4 ) )
  {
    /*
    void setRect( qreal x, qreal y, qreal width, qreal height )
    */
    QGraphicsRectItem * obj = static_cast< QGraphicsRectItem * >( Qt4xHb::itemGetPtrStackSelfItem() );

    if( obj != NULL )
    {
      obj->setRect( PQREAL( 1 ), PQREAL( 2 ), PQREAL( 3 ), PQREAL( 4 ) );
    }

    hb_itemReturn( hb_stackSelfItem() );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual QRectF boundingRect() const
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_BOUNDINGRECT )
{
  QGraphicsRectItem * obj = static_cast< QGraphicsRectItem * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QRectF * ptr = new QRectF( obj->boundingRect() );
      Qt4xHb::createReturnClass( ptr, "QRECTF", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool contains( const QPointF & point ) const
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_CONTAINS )
{
  QGraphicsRectItem * obj = static_cast< QGraphicsRectItem * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQPOINTF( 1 ) )
    {
#endif
      RBOOL( obj->contains( *PQPOINTF( 1 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual bool isObscuredBy( const QGraphicsItem * item ) const
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_ISOBSCUREDBY )
{
  QGraphicsRectItem * obj = static_cast< QGraphicsRectItem * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQGRAPHICSITEM( 1 ) )
    {
#endif
      RBOOL( obj->isObscuredBy( PQGRAPHICSITEM( 1 ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual QPainterPath opaqueArea() const
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_OPAQUEAREA )
{
  QGraphicsRectItem * obj = static_cast< QGraphicsRectItem * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QPainterPath * ptr = new QPainterPath( obj->opaqueArea() );
      Qt4xHb::createReturnClass( ptr, "QPAINTERPATH", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual void paint( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_PAINT )
{
  QGraphicsRectItem * obj = static_cast< QGraphicsRectItem * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 2, 3 ) && ISQPAINTER( 1 ) && ISQSTYLEOPTIONGRAPHICSITEM( 2 ) && ( ISQWIDGET( 3 ) || HB_ISNIL( 3 ) ) )
    {
#endif
      obj->paint( PQPAINTER( 1 ), PQSTYLEOPTIONGRAPHICSITEM( 2 ), OPQWIDGET( 3, 0 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QPainterPath shape() const
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_SHAPE )
{
  QGraphicsRectItem * obj = static_cast< QGraphicsRectItem * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QPainterPath * ptr = new QPainterPath( obj->shape() );
      Qt4xHb::createReturnClass( ptr, "QPAINTERPATH", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
virtual int type() const
*/
HB_FUNC_STATIC( QGRAPHICSRECTITEM_TYPE )
{
  QGraphicsRectItem * obj = static_cast< QGraphicsRectItem * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->type() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
